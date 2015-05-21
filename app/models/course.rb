class Course < ActiveRecord::Base
  has_many :course_subjects, dependent: :destroy
  has_many :subjects, through: :course_subjects
  has_many :course_users
  has_many :users, through: :course_users

  accepts_nested_attributes_for :course_subjects
  
  validates :name, presence:true, length: {maximum: 50}
end
