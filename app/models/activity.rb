class Activity < ActiveRecord::Base
  belongs_to :user

  def find_name
    case action
    when "joined"
      @course = Course.find target_id
      @course.name
    when "was added to"
      @subject = Subject.find target_id 
      @subject.name
    when "did"
      @task = Task.find target_id
      @task.title
    when "completed"
      @task = Task.find target_id
      @task.title 
    end
  end
end
