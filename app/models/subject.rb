class Subject < ActiveRecord::Base
  has_many :course_subjects, dependent: :destroy
  has_many :courses, through: :course_subjects
  has_many :tasks, dependent: :destroy

  accepts_nested_attributes_for :tasks, reject_if: lambda {|a| a[:content].blank?}, allow_destroy: true
  
  validates :name, presence: true
  validates :instruction, presence: true
end
