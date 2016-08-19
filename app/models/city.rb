class City < ActiveRecord::Base
	validates :name, :state_id, presence: true
end
