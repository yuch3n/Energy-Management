class Admin::HallsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin'

  def index
    @halls = Hall.all(:order => 'name')
  end

  def new
    @categories = Category.all
  end

  def delete

  end

  def create
    @hall = Hall.create params[:hall]
    if @hall
      if params[:streamid] && params[:hall]
          Hall.create :name => params[:hall], :streamid => params[:streamid]
          flash[:notice] = "#{@hall.name} was successfully created."
          redirect_to admin_halls_path
      end
    else
      # hall create failed, redirect back to "new" hall
      flash[:error] = "Hall creation failed."
      redirect_to new_admin_hall_path
    end
  end

  def destroy
    @hall = Hall.find_by_id params[:streamid]
    if @hall
      if @hall.destroy
        flash[:notice] = "Hall '#{@hall.name}' deleted."
        redirect_to admin_halls_path
      else
        flash[:error] = "Sorry, you aren't strong enough to destroy this tip."
        redirect_to edit_admin_hall_path
      end
    else
      # hall was not found
      flash[:error] = "Hall '#{@hall.name}' does not exist."
      redirect_to admin_halls_path
    end
  end


end
