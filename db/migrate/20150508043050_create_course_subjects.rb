class CreateCourseSubjects < ActiveRecord::Migration
  def change
    create_table :course_subjects do |t|
      t.integer :subject_id
      t.integer :course_id
      t.references :subject, index:true, foreign_key: true
      t.references :course, index:true, foreign_key: true

      t.timestamps null: false
    end
    add_index :course_subjects, [:subject_id, :course_id], unique: true
  end
end
