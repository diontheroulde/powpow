class SessionsController < ApplicationController

  def new
    
  end

  def create
    @user = User.find_by(user_name: params[:session][:user_name])
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to homepage_path
    else
      render 'new'
    end
  end

  def delete

  end
end
