class AddDescriptionToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :description, :text
  end
end
