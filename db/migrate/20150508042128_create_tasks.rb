class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.integer :subject_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
