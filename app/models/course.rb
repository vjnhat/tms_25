class Course < ActiveRecord::Base
  has_many :subject_courses
  has_many :subjects, through: :subject_courses
  
  validates :name, presence:true, length: {maximum: 50}
  
  before_save :generate_code

  private
  def generate_code
    string = self.name.split(" ")
    number = 20 + Random.rand(1000)
    self.course_code = string[0] + number.to_s
  end
end
