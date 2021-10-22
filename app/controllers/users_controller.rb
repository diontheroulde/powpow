class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      flash[:notice]
      render :new
    end
  end

  def new
    @user = User.new
  end

  private 

  def user_params
    params.require(:user).permit(
      :id, 
      :username, 
      :first_name, 
      :last_name, 
      :password, 
      :password_confirmation
    )
  end
end
