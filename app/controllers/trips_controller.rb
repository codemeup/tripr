class TripsController < ApplicationController

def index
    @all = Trips.all
end

def new
    @trip = Trip.new
end

# def logout
#     session[:user_id] = nil
#     flash[:notice] = "Logged out"
#     redirect_to login_path
# end

def show
    @trip = Trip.find(params[:id])
end

# def edit
#     @user = User.find(params[:id])
# end

private
def user_params
   params.require(:user).permit(:name)
end

end