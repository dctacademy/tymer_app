class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :student_id
      t.integer :activity_type_id
      t.datetime :activity_datetime
      t.integer :user_id
      t.string :title
      t.text :description
      t.boolean :is_completed
      t.datetime :completed_on

      t.timestamps
    end
  end
end
