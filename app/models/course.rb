class Course < ActiveRecord::Base
  has_many :course_subjects, dependent: :destroy
  has_many :subjects, through: :course_subjects

  validates :name, presence:true, length: {maximum: 50}
  
  before_save :generate_code

  accepts_nested_attributes_for :subjects
  accepts_nested_attributes_for :course_subjects
  
  private
  def generate_code
    string = self.name.split(" ")
    number = 20 + Random.rand(1000)
    self.course_code = string[0] + number.to_s
  end
end
