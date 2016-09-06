class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.date :posted_date
      t.integer :company_id
      t.integer :min_ex
      t.integer :max_ex
      t.integer :job_source_id
      t.string :job_link

      t.timestamps
    end
  end
end
