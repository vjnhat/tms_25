class UserTask < ActiveRecord::Base
  include CreateActivity

  belongs_to :user
  belongs_to :task

  after_create :log_action
  after_update :create_msg

  private
  def log_action
    create_activity user_id, "Can do", task_id
  end

  def create_msg
    create_activity user_id, "Did", task_id
  end
end
