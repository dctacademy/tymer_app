class Batch < ActiveRecord::Base
  has_many :student_batches
  has_many :students, through: :student_batches
  has_many :messages, dependent: :destroy
  
  has_many :trackers, dependent: :destroy
  belongs_to :user
  validates :title, :start_date, :end_date, presence: true
  
end
