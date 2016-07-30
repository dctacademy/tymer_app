class AddTemperatureToStudents < ActiveRecord::Migration
  def change
    add_column :students, :temperature, :string, default: "warm"
  end
end
