require 'rubygems'
require 'json'

class HallsController < ApplicationController
  layout 'mobile'

  def index
    @halls = Hall.all(:order => 'name')
  end

  def show
    @hall = Hall.find_by_id(Integer(params[:id]))
    @interval = params[:interval] || "week"
    @path = @hall.get_graph(300, 260, @interval)
    @green_features = @hall.green_features
    @data = @hall.get_data @interval
    @json = Hall.all.to_gmaps4rails

    parsedData = JSON.parse(@data)
    arraySize = 10000

    if @data == "[]"
      parsedData = [{"uuid"=>"no stream", "Readings"=>[[0, 0]]}]
    end

    parsedData.delete_if{|measurement| measurement["Readings"].size == 0}

    parsedData.each do |measurement|
      if measurement["Readings"].size < arraySize
        arraySize = measurement["Readings"].size
      end
    end

    finalData = Array.new(arraySize){Array.new(2)}

    finalData.each_with_index do |measurement, index|
      finalData[index][0] = parsedData[0]["Readings"][index][0] - 28800000 #Offset to the correct current time frame.
      finalData[index][1] = 0
    end

    parsedData.each do |measurement|
      finalData.each_with_index do |reading, index|
        finalData[index][1] = finalData[index][1] + measurement["Readings"][index][1]
      end
    end

    @data = {"Readings" => finalData}.to_json

  end

  def map
     @json = Hall.all.to_gmaps4rails
  end
end

