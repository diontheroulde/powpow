class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def ensure_signed_in
    redirect_to login_path if current_user.blank?
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end
