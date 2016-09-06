class TechnologyCategory < ActiveRecord::Base
	has_many :technologies

	validates :name, presence: true
end
