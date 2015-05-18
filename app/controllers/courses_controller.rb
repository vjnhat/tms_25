class CoursesController < ApplicationController
  before_action :logged_in_user

  def index
    @courses = current_user.courses.paginate page: params[:page], per_page: 20
  end

  def show
    @course = Course.find params[:id]
  end
  
  private
  def course_params
    params.require(:course).permit :course_code, :name, :instruction, subject_ids: []
  end
end
