class AddColumnDifficultyToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :difficulty, :string
  end
end
