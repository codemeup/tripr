class ActivitiesController < ApplicationController
#   before_action :confirm_logged_in

  def index
   @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
   @activity = Activity.create(activity_params)
     if @activity.save
        flash[:success] = "Activity created"
        redirect_to trip_path(@activity)
     else
       render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id]) #find it
    @activity.update_attributes (activity_params)#update attr
    if @activity.save #save it
      flash[:success] = "Activity updated"
      redirect_to activities_path
    else
      render :edit
    end
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    flash[:success] = "Activity deleted"
    redirect_to activities_path
  end

  def activity_params
    params.require(:activity).permit(:name, :summary, :link, :category, :address, :zip_code, :booked, :time_period, :proposed_on, :booked_on, :created_at, :trip_id, :cost)
  end

end
