class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new(instructor_id: params[:instructor_id])
    @activity.build_instructor
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.save
  end

  private

  def activity_params
    params.require(:activity).permit(
      :id,
      :name,
      :lesson_time,
      instructor_attributes: [:id, :name]
    )
  end
end
