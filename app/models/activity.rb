class Activity < ActiveRecord::Base
  belongs_to :user

  def find_name
    case action
    when "Joined"
      @course = Course.find target_id
      @course.name
    when "Was added to", "Completed"
      @subject = Subject.find target_id
      @subject.name
    when "Can do", "Did"
      @task = Task.find target_id
      @task.title
    end
  end
end
