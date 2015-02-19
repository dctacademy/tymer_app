class AddUserIdToStudentSources < ActiveRecord::Migration
  def change
    add_column :student_sources, :user_id, :integer
  end
end
