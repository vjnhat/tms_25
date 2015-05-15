class CreateSubjectCourses < ActiveRecord::Migration
  def change
    create_table :subject_courses do |t|
      t.integer :subject_id
      t.integer :course_id
      t.references :subject, index:true, foreign_key: true
      t.references :course, index:true, foreign_key: true

      t.timestamps null: false
    end
    add_index :subjectcourses, [:subject_id, :course_id], unique: true
  end
end
