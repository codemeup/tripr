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
   # if validate_end_date_before_start_date != false
     if @trip.save
        flash[:success] = "Trip created"
        redirect_to trip_path(@trip)
     else
       render :new
     end
  #   else
  #   flash[:success] = "Oops!"
  #   render :new
  # end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def show
    @trip = Trip.find(params[:id])
    gon.start_date = @trip.start_date.as_json(:only => [:start_date])
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
    redirect_to trips_path
  end

  def trip_params
    params.require(:trip).permit(:trip_name, :primary_location_city, :primary_location_country, :start_date, :end_date, :image, :notes)
  end
end
