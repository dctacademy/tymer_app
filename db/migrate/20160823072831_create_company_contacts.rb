class CreateCompanyContacts < ActiveRecord::Migration
  def change
    create_table :company_contacts do |t|
      t.integer :company_id
      t.string :name
      t.string :email
      t.string :mobile

      t.timestamps
    end
  end
end
