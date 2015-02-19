class AddInstructionTypeToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :instruction_type, :string
  end
end
