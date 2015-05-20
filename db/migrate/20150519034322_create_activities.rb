class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :action
      t.integer :target_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
