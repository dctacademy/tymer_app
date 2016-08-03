class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :description
      t.integer :topic_id
      t.integer :chapter_id

      t.timestamps
    end
  end
end
