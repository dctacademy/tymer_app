class Job < ActiveRecord::Base
	belongs_to :company

	has_many :job_technologies
	has_many :technologies, through: :job_technologies
end
