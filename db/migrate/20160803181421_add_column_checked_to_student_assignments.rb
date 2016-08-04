class AddColumnCheckedToStudentAssignments < ActiveRecord::Migration
  def change
    add_column :student_assignments, :checked, :boolean, default: false
  end
end
