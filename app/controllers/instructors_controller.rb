class InstructorsController < ApplicationController
  before_action :ensure_signed_in
  
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
    @instructor.activities.build
  end
end
