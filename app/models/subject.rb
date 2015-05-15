class Subject < ActiveRecord::Base
  has_many :course_subjects, dependent: :destroy
  has_many :courses, through: :course_subjects
  has_many :tasks, dependent: :destroy
  
  validates :name, presence: true
  validates :instruction, presence: true

  accepts_nested_attributes_for :tasks, reject_if: lambda {|a| a[:content].blank?}, allow_destroy: true
end
