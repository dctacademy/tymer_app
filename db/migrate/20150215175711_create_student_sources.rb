class CreateStudentSources < ActiveRecord::Migration
  def change
    create_table :student_sources do |t|
      t.string :name

      t.timestamps
    end
  end
end
