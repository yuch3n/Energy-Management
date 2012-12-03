require 'net/http'
require 'rubygems'
require 'json'
require 'gmaps4rails'

class Time
  def to_ms
    (self.to_f * 1000.0).to_i
  end
end

class Hall < ActiveRecord::Base

  has_many :hall_features
  has_many :green_features, :through => :hall_features
  has_many :settings, :through => :pinned_halls
  belongs_to :operational_unit

  acts_as_gmappable 
  
  def get_graph (width = 700, height = 300, interval = 'week')
    if self.key
      "http://my.pulseenergy.com/embed/?key=#{self.key}&width=#{width}&height=#{height}&interval=#{interval}"
    end
  end

  def get_data interval
    starttime = getendtime(interval)
    endtime = Time.now.to_ms

    uri = URI.parse("http://new.openbms.org/backend/api/query")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri)
    request.body = getquery(starttime, endtime)

    resp = http.request(request)
    resp.body
  end


 def getquery(starttime, endtime)
    streamlimit = 1000

    if(self.name == "Davis Hall" || self.name == "SRB1" || self.name == "Giannini Hall" || self.name == "Haviland Hall" || self.name == "Sproul Hall" || self.name == "Wellman Hall")
     "select data in (#{starttime}, #{endtime}) streamlimit #{streamlimit} where Properties/UnitofMeasure = 'kW'
								 	   and Metadata/Location/Building = '#{self.name}' 
									   and not Metadata/Extra/Operator like 'sum%'"
    elsif(self.name == "Stanley Hall")
     "select data in (#{starttime}, #{endtime}) streamlimit #{streamlimit} where Properties/UnitofMeasure = 'kW'
								 	   and Metadata/Location/Building = '#{self.name}' 
									   and (Metadata/Extra/MeterName = 'MAIN 1' or
										Metadata/Extra/MeterName = 'MAIN 2' or
										Metadata/Extra/MeterName = 'MAIN 3')
									   and not Metadata/Extra/Operator like 'sum%'"
    else
    "select data in (#{starttime}, #{endtime}) streamlimit #{streamlimit} where (Metadata/Extra/ChannelName = 'kW demand' or 
										 Metadata/Extra/ChannelName = 'kW td' or
										 Metadata/Extra/ChannelName = 'West Elec Meter Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Watts, 3-Ph total' or
                                                                                 Metadata/Extra/ChannelName = 'BARROWS MAIN ELECTRIC Demand' or
                                                                                 Metadata/Extra/ChannelName = 'BARROWS MAIN ELECTRIC Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Haas Pavilion Main Electric Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Sub 1 Main Meter Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Sub 2 Main Meter Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Hargrove Main Electric Demand' or
                                                                                 Metadata/Extra/ChannelName = 'EMON Meter Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Main Electrical Meter Demand' or
                                                                                 Metadata/Extra/ChannelName = '225 KVA Xfmr - Panel LNDB-2 Demand' or
                                                                                 Metadata/Extra/ChannelName = 'U Hall Rm 33B kWH meter Demand' or
                                                                                 Metadata/Extra/ChannelName = 'Wurster Main Electric Instantaneous' or
										 Metadata/Extra/ChannelName = 'Electric MB01 Demand' or
								    	         Metadata/Extra/ChannelName = 'Electric MB02 Demand' or
										 uuid = '5ecfcd76-25ca-57d3-8a39-23b453a17b7e' or
								    	         uuid = 'bc3a93bc-9bdd-5c59-aa6e-63f7060b9d58' or
                                                                                 uuid = '22109bd7-06d9-58a0-902f-2a5ed92f92e1' or
                                                                                 uuid = 'bc3a93bc-9bdd-5c59-aa6e-63f7060b9d58' or
                                                                                 uuid = 'f9e52e06-697a-57af-9566-d05fabb001a4' or
                                                                                 uuid = '19edb822-eccb-5289-8fee-a39cdda66cd5' or
                                                                                 uuid = '1bf52ff9-2034-5fef-91b0-8b6cc7855f00')
                                                                                 and Metadata/Location/Building = '#{self.name}' and not Metadata/Extra/Operator like 'sum%'"

    end


 end

  def gmaps4rails_address
    if(self.name == "Tang Center")
       "2222 Bancroft Way, Berkeley, CA"
    elsif(self.name == "Le Conte Hall")
       "LeConte Hall, S Hall Rd, Berkeley, CA"
    elsif(self.name == "California Hall")
       "California Hall, Sather Rd, Berkeley, CA"
    else
      "#{self.name}, Berkeley, CA" 
    end
  end

  def gmaps4rails_title
      "#{self.name}"
  end

  def gmaps4rails_infowindow
    "<center><a href=\"http://mypower.herokuapp.com/halls/#{self.id}\"> #{self.name}</a>
     <br>
     <a href=\"http://mypower.herokuapp.com/halls/#{self.id}\"><img src= \"/smallbuildings/#{self.name}.jpg\"></a></center>"
  end

  def getendtime interval
    if interval == "day"
      1.day.ago.to_ms
    elsif interval == "week"
      1.week.ago.to_ms
    elsif interval == "month"
      1.month.ago.to_ms
    end
  end

end
