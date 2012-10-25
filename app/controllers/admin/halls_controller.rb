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

end
