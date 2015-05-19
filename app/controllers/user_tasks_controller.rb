class UserTasksController < ApplicationController
 
  def update
    @user_task = UserTask.find params[:id]
    @user_task.update_attributes status: t(:complete)
  end
end
