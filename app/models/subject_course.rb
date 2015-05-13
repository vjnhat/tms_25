class SubjectCourse < ActiveRecord::Base
  belongs_to :courses
  belongs_to :subjects
end
