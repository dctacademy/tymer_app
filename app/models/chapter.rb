class Chapter < ActiveRecord::Base
	belongs_to :topic

	has_many :assignments
end
