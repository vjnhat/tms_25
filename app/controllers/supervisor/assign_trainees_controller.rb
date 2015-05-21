class Supervisor::AssignTraineesController < ApplicationController
  def show
    @course = Course.find params[:course_id]
    @trainees_in_this_course = @course.users
    @no_course_users = User.not_in_a_course.all
  end

  def update
    @course = Course.find params[:course_id]
    if @course.update_attributes course_params
      redirect_to supervisor_course_path(@course)
    else
      render 'assign_trainees'
    end
  end

  private
  def course_params
    params.require(:course).permit user_ids: []
  end
end
