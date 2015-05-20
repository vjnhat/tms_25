class Task < ActiveRecord::Base
  belongs_to :subject
  has_many :user_tasks
  
  validates :title, presence: true
  validates :content, presence: true
end
