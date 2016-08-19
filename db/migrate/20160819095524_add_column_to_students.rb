class AddColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :batch_type, :string
  end
end
