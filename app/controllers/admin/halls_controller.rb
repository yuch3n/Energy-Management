#Author: Leslie Chang
class Admin::HallsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin'

  def index
    @halls = Hall.all(:order => 'name')
  end

  def show
    @hall = Hall.find_by_id params[:id]
    if !@hall
      flash[:error] = "That building does not exist."
      redirect_to admin_halls_path
    end
  end

  def new
    @features = GreenFeature.all
  end

  def edit
    @hall = Hall.find_by_id params[:id]
    @features = GreenFeature.all
  end

  def update
    @hall = Hall.find_by_id params[:id]
    if params[:hall][:name] == ""
      flash[:error] = "Can't have empty name."
      redirect_to edit_admin_hall_path
    elsif @hall
      valid_update = @hall.update_attributes params[:hall]
      if !valid_update
        flash[:error] = "Couldn't update #{@hall.name}."
        redirect_to admin_halls_path
      else
        HallFeature.destroy_all :hall_id => params[:id]
        if params[:features]
          params[:features].each do |name|
            # checked is always "1" in here, i.e. only checked categories are passed
            HallFeature.create :hall_id => params[:id], :green_feature_id => GreenFeature.find_by_name(name).id
          end
        end
        flash[:notice] = "#{@hall.name} was successfully updated."
        redirect_to admin_halls_path
      end
    else
      # Couldn't find the hall, redirect to the index page with an error
      flash[:error] = "That building does not exist."
      redirect_to admin_halls_path
    end
  end

  def create
    # fail if input is empty
    if params[:hall][:name] == ""
      flash[:error] = "Can't have empty name."
      redirect_to new_admin_hall_path
    else
      @hall = Hall.create!(params[:hall])
      # success!
      if @hall
        if params[:features]
          params[:features].each do |name|
            # checked is always "1" in here, i.e. only checked features are passed
            HallFeature.create :hall_id => @hall.id, :green_feature_id => GreenFeature.find_by_name(name).id
          end
        end
        flash[:notice] = "#{@hall.name} was successfully created."
        redirect_to admin_halls_path
      end
    end
  end

  def destroy
    @hall = Hall.find_by_id params[:id] 
    if @hall
      if @hall.destroy
        flash[:notice] = "Building '#{@hall.name}' deleted."
        redirect_to admin_halls_path
      end
    else
      # tip was not found
      flash[:error] = "That building does not exist."
      redirect_to admin_halls_path
    end
  end


end
