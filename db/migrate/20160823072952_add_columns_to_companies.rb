class AddColumnsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :state_id, :integer
    add_column :companies, :city_id, :integer
  end
end
