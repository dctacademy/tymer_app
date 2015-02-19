class CreateStudentBatches < ActiveRecord::Migration
  def change
    create_table :student_batches do |t|
      t.integer :student_id
      t.integer :batch_id

      t.timestamps
    end
  end
end
