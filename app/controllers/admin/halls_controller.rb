class Admin::HallsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin'

  def index
    @halls = Hall.all(:order => 'name')
  end

  def new
    @categories = Category.all
  end

  def create
    @hall = Hall.create params[:hall]
    if @hall && !params[:streamid].nil? && !params[:hall].nil?
      flash[:notice] = "#{@hall.name} was successfully created."
      redirect_to admin_halls_path
    else
      # hall create failed, redirect back to "new" hall
      flash[:error] = "Hall creation failed."
      redirect_to new_admin_hall_path
    end
  end

  def destroy
    @hall = Hall.find_by_id params[:id]
    if @hall
      if @hall.destroy
        flash[:notice] = "Hall '#{@hall.name}' deleted."
        redirect_to admin_halls_path
      else
        flash[:error] = "Could not remove hall."
        redirect_to edit_admin_hall_path
      end
    else
      # tip was not found
      flash[:error] = "That hall '#{@hall.name}' does not exist."
      redirect_to admin_halls_path
    end
  end


end
