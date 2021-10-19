class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to homepage_path
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  private 

  def user_params
    params.require(:user).permit(:id, :user_name, :first_name, :last_name, :password, :password_confirmation)
  end
end
