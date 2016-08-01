class ActivityType < ActiveRecord::Base
	has_many :activities

	validates :name, presence: true
end
