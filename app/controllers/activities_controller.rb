class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new(instructor_id: params[:instructor_id])
    @activity.build_instructor
  end

  def create
    user = User.find(session[:user_id])
    @activity = user.activities.new(activity_params)
    add_instructor_to_activity
    @activity.save
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(
      :id,
      :name,
      :lesson_time
    )
  end

  def add_instructor_to_activity
    instructor = if params[:instructors][:name].present?
                   Instructor.create(name: params[:instructors][:name])
                 else
                   Instructor.find(params[:activity][:instructor_id])
                 end
    # if we have a new instructor name
    #  create the instructor
    # else
    #  find the instructor from params
    # end
    # add instructor to activity
    @activity.instructor = instructor
  end
end
