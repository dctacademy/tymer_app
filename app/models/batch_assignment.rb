class BatchAssignment < ActiveRecord::Base
	belongs_to :batch
	belongs_to :assignment

	has_many :student_assignments
	has_many :students, through: :student_assignments
end
