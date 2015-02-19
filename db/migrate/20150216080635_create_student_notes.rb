class CreateStudentNotes < ActiveRecord::Migration
  def change
    create_table :student_notes do |t|
      t.text :note
      t.integer :user_id
      t.integer :student_id

      t.timestamps
    end
  end
end
