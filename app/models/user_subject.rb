class UserSubject < ActiveRecord::Base
  include CreateActivity

  belongs_to :user
  belongs_to :subject

  after_create :log_action
  after_update :create_msg

  private
  def log_action
    create_activity user_id, "Was added to", subject_id
  end

  def create_msg
    create_activity user_id, "Completed", subject_id
  end
end
