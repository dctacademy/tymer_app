class Activity < ActiveRecord::Base
	belongs_to :user
	belongs_to :student
	belongs_to :activity_type 

	validates :title, :student_id, :activity_type_id, :description, :activity_datetime, presence: true
end
