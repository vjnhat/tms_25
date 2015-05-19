class UserSubject < ActiveRecord::Base
  belongs_to :User
  belongs_to :Subject
  before_create :log_action
  before_update :create_msg
  
  def log_action
    Activity.create user_id: user_id, action: "was added to", target_id: subject_id
  end

  def create_msg
    Activity.create user_id: user_id, action: "finished", target_id: subject_id
  end
end
