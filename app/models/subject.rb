class Subject < ActiveRecord::Base
  has_many :subject_courses
  has_many :courses, through: :subject_courses
  has_many :tasks
end
