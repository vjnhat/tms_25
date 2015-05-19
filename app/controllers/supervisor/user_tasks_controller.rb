class Supervisor::UserTasksController < ApplicationController
  def update
    @task_id = params[:task_id]
    @user_id = current_user.id
    @var = UserTask.find_by user_id: @user_id, task_id: @task_id
    @var.update_attributes status: t(:complete)
  end
end