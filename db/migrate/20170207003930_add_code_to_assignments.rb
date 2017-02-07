class AddCodeToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :code, :string
  end
end
