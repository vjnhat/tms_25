class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :name
      t.text :instruction
      t.integer :creator_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
