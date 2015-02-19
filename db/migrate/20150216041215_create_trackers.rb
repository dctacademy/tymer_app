class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :batch_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
