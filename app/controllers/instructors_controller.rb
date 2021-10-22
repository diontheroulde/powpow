class InstructorsController < ApplicationController
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
