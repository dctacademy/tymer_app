class CreateBatchAssignments < ActiveRecord::Migration
  def change
    create_table :batch_assignments do |t|
      t.integer :batch_id
      t.integer :assignment_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
