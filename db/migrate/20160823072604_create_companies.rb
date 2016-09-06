class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :website
      t.string :company_type
      t.integer :company_source_id

      t.timestamps
    end
  end
end
