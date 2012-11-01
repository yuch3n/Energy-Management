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
      flash[:error] = "That hall does not exist."
      redirect_to admin_halls_path
    end
  end

  def edit
    @hall = Hall.find_by_id params[:id]
  end

  def update
    @hall = Hall.find_by_id params[:id]
    if params[:hall][:name] == "" || params[:hall][:streamid] == ""
      flash[:error] = "Can't have empty name or stream id."
      redirect_to edit_admin_hall_path
    elsif @hall
      valid_update = @hall.update_attributes params[:hall]
      if !valid_update
        flash[:error] = "Couldn't update #{@hall.name}."
        redirect_to admin_halls_path
      else
        flash[:notice] = "#{@hall.name} was successfully updated."
        redirect_to admin_halls_path
      end
    else
      # Couldn't find the hall, redirect to the index page with an error
      flash[:error] = "That hall does not exist."
      redirect_to admin_halls_path
    end
  end

  def create
    # fail if input is empty
    if params[:hall][:name] == "" || params[:hall][:streamid] == ""
      flash[:error] = "Can't have empty name or stream id."
      redirect_to new_admin_hall_path
    else
      @hall = Hall.create!(params[:hall])
      # success!
      if @hall
        flash[:notice] = "#{@hall.name} was successfully created."
        redirect_to admin_halls_path
      end
    end
  end

  def destroy
    @hall = Hall.find_by_id params[:id] 
    if @hall
      if @hall.destroy
        flash[:notice] = "Hall '#{@hall.name}' deleted."
        redirect_to admin_halls_path
      end
    else
      # tip was not found
      flash[:error] = "That hall does not exist."
      redirect_to admin_halls_path
    end
  end


end
