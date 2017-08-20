class Assignment < ActiveRecord::Base
	acts_as_taggable 
	
	has_many :batch_assignments
	has_many :batches, through: :batch_assignments
	belongs_to :topic
	belongs_to :chapter
	has_many :solutions

	validates :name, :topic_id, :chapter_id, :level, presence: true
	validates :description, {presence: true, length: {minimum: 10 }}

	before_create :generate_code 

	private

	def generate_code
		begin
      self.code = "DCT#{SecureRandom.hex(2)}"
    end while self.class.exists?(code: code)
	end

end
