class Task < ActiveRecord::Base
  belongs_to :subject
  
  validates :title, presence: true
  validates :content, presence: true
end
