class CreateSubjectCourses < ActiveRecord::Migration
  def change
    create_table :subject_courses do |t|
      t.integer :subject_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
