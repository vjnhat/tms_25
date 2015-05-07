class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :instruction
      t.integer :teacher_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
