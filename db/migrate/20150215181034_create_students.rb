class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :about
      t.string :learning_style
      t.integer :student_source_id
      t.string :student_type
      t.integer :user_id

      t.timestamps
    end
  end
end
