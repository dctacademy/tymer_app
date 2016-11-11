class RenameColumnInAssignments < ActiveRecord::Migration
  def change
  	rename_column :assignments, :difficulty, :level
  end
end
