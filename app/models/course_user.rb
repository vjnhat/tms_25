class CourseUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  after_create :create_user_subject_task
  after_create :log_action

  def create_user_subject_task
    @course = Course.find self.course_id 
    @course.subjects.each do |subject|
      UserSubject.create user_id: self.user_id, subject_id: subject.id, status: "learning"
      subject.tasks.each do |task|
        UserTask.create user_id: self.user_id, task_id: task.id, status: "did"
      end
    end
  end

  def log_action
    Activity.create user_id: user_id, action: "joined", target_id: course_id 
  end
end
