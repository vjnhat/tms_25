class CourseUser < ActiveRecord::Base
  include CreateActivity

  belongs_to :user
  belongs_to :course

  after_create :create_user_subject_task
  after_save :log_action

  private
  def create_user_subject_task
    @course = Course.find course_id 
    @course.subjects.each do |subject|
      UserSubject.create user_id: user_id, subject_id: subject.id, course_id: course_id, status: "Learning"
      subject.tasks.each do |task|
        UserTask.create user_id: user_id, task_id: task.id, course_id: course_id, status: "Can do"
      end
    end
  end

  def log_action
    create_activity user_id, "Joined", course_id
  end
end
