class CreateStudentAssignments < ActiveRecord::Migration
  def change
    create_table :student_assignments do |t|
      t.integer :student_id
      t.integer :batch_assignment_id
      t.datetime :submitted_on

      t.timestamps
    end
  end
end
