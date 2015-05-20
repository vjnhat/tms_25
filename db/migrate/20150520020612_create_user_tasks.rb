class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :user_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :course_id
      t.string :status

      t.references :user, index:true, foreign_key: true
      t.references :task, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
