class WelcomeController < ApplicationController
  before_action :ensure_signed_in
  
  def index; end
end
