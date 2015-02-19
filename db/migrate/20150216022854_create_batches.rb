class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
