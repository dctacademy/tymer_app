class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :student_id
      t.date :dob
      t.string :blood_group
      t.text :permanent_address
      t.text :current_address
      t.string :emergency_contact
      t.string :from
      t.string :college
      t.string :stream

      t.timestamps
    end
  end
end
