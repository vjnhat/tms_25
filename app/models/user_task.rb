class UserTask < ActiveRecord::Base
  belongs_to :User
  belongs_to :Task

  before_create :log_action
  before_update :create_msg
  
  def log_action
    Activity.create user_id: user_id, action: "did", target_id: task_id
  end

  def create_msg
    Activity.create user_id: user_id, action: "completed", target_id: task_id
  end
end
