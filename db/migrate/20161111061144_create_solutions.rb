class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :body
      t.integer :assignment_id

      t.timestamps
    end
  end
end
