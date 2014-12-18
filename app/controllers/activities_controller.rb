class ActivitiesController < ApplicationController
#   before_action :confirm_logged_in

  def index
   @activities = Activity.all
  end

  def new
    @activity = Activity.new
    @trip_id = params[:trip_id]
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity.save
    redirect_to trip_path(params["trip_id"])
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
    @trip = Trip.find(params[:trip_id])
    @activity = Activity.find(params[:id]) #find it
    @activity.update_attributes(:proposed_on => params[:proposed_on])#update attr
    if @activity.save #save it
      # flash[:success] = "Activity updated"
      # redirect_to trip_activity_path(@trip, @activity)
      render json: @activity
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

  # def update_date
  #   params.require(:activity).permit(:proposed_on)
  # end

  def activity_params
    params.require(:activity).permit(:title, :summary, :link, :category, :address, :zip_code, :booked, :duration, :proposed_on, :booked_on, :created_at, :trip_id, :cost)
  end

end
