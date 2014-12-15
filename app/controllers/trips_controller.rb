class TripsController < ApplicationController
  # before_action :confirm_logged_in

  def index
   @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
   @trip = Trip.create(trip_params)
   if @trip.save
      flash[:success] = "Trip created"
      redirect_to trips_path
   else
     render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id]) #find it
    @trip.update_attributes (trip_params)#update attr
    if @trip.save #save it
      flash[:success] = "Trip updated"
      redirect_to trips_path
    else
      render :edit
    end
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    flash[:success] = "Trip deleted"
    redirect_to tripss_path
  end
end
