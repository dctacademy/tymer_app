class AddMacAddressToStudents < ActiveRecord::Migration
  def change
    add_column :students, :mac_address, :string
  end
end
