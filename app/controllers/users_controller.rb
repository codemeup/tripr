class UsersController < ApplicationController

# def index
#     @all = User.all
# end

def new
    @user = User.new
end

def create
    @user = User.new(params[:user_id])
    if @user.save
      # session[:user_id] = @user.id
      flash[:success] = "You are now logged in!"
      redirect_to users_path
    else
      # render :signup
      flash[:success] = "Form is invalid"
    end
    render "new"
  end
end

# def logout
#     session[:user_id] = nil
#     flash[:notice] = "Logged out"
#     redirect_to login_path
# end

# def show
#     @user = User.find(params[:id])
# end

# def edit
#     @user = User.find(params[:id])
# end

private
def user_params
   params.require(:user).permit(:name)
end


end