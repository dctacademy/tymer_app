class Technology < ActiveRecord::Base
	belongs_to :technology_category

	has_many :job_technologies
	has_many :jobs, through: :job_technologies
	validates :name, :technology_category_id, presence: true
end
