class Supervisor::SubjectsController < ApplicationController
  def index
    @subjects = Subject.paginate page: params[:page], per_page: 20
  end
  
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new subject_params
    if @subject.save
      flash[:success] = t(:subject_created)
      redirect_to supervisor_subjects_path @subject
    end
  end

  def show
    @subject = Subject.find params[:id]
  end

  def edit
    @subject = Subject.find params[:id]
  end

  def destroy
  end

  private
  def subject_params
    params.require(:subject).permit :name, :instruction
  end
end
