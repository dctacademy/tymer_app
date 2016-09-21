class JobTechnology < ActiveRecord::Base
	belongs_to :job 
	belongs_to :technology
end
