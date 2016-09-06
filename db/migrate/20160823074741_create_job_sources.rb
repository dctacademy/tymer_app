class CreateJobSources < ActiveRecord::Migration
  def change
    create_table :job_sources do |t|
      t.string :name

      t.timestamps
    end
  end
end
