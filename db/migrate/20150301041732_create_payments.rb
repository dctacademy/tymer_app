class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :batch_id
      t.integer :student_id
      t.date :payment_date
      t.string :payment_type
      t.integer :payment_amount
      t.text :payment_details

      t.timestamps
    end
  end
end
