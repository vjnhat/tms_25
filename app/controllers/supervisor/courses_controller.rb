class Supervisor::CoursesController < ApplicationController
  before_action :logged_in_user, :require_super
  
  def index
    @courses = Course.paginate page: params[:page], per_page: 20
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new course_params
    if @course.save
      flash[:success] = t(:created_course)
      redirect_to @course
    else
      render 'new'
    end
  end

  def show
    @course = Course.find params[:id]
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    if @course.update_attributes course_params
      flash[:success] = t(:updated_course)
      redirect_to @course
    else
      flash[:danger] = t(:unsuccess)
      redirect_to @course
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    flash[:success] = t(:deleted_course)
    redirect_to supervisor_courses_path
  end
  
  private
  def course_params
    params.require(:course).permit :course_code, :name, :instruction, subject_ids: []
  end
end
