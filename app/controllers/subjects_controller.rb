class SubjectsController < ApplicationController
  def index
    @subjects = Subject.paginate page: params[:page], per_page: 20
  end
  
  def show
    @subject = Subject.find params[:id]
  end
  
  private
  def change_status
    @task_id = params[:task_id]
    @user_id = current_user.id
    @var = UserTask.find_by user_id: @user_id, task_id: @task_id
    @var.update_attributes status: t(:complete)
  end
end
