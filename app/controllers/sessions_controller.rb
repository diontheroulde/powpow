class SessionsController < ApplicationController

  def new
    
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    return head(:forbidden) unless @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to homepage_path
  end

  def destroy
    session[:user_id] = nil 
    flash[:notice] = "You signed out" 
    redirect_to login_path   
  end
end
