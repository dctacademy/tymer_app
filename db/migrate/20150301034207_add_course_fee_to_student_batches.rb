class AddCourseFeeToStudentBatches < ActiveRecord::Migration
  def change
    add_column :student_batches, :course_fee, :integer
  end
end
