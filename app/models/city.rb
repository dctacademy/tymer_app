class City < ActiveRecord::Base
	validates :name, :state_id, presence: true
	has_many :companies
	belongs_to :state
end
