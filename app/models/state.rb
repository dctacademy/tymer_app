class State < ActiveRecord::Base
	validates :name, presence: true
	has_many :companies
	has_many :cities
end
