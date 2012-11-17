class Introduction < ActiveRecord::Base

   def self.get_all
        @introductions = []

	Introduction.all.each do |intro|
	  @introductions.push(intro)
	end
	@introductions
   end
end


