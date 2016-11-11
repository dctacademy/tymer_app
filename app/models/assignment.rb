class Assignment < ActiveRecord::Base

	has_many :batch_assignments
	has_many :batches, through: :batch_assignments
	belongs_to :topic
	belongs_to :chapter
	has_many :solutions

	validates :name, :topic_id, :chapter_id, :level, presence: true
	validates :description, {presence: true, length: {minimum: 10 }}

end
