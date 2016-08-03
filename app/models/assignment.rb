class Assignment < ActiveRecord::Base

	has_many :batch_assignments
	has_many :batches, through: :batch_assignments
	belongs_to :topic
	belongs_to :chapter
end
