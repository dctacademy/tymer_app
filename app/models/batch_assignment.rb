class BatchAssignment < ActiveRecord::Base
	belongs_to :batch
	belongs_to :assignment
end
