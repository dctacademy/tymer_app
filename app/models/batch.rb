class Batch < ActiveRecord::Base
  has_many :payments
  
  has_many :student_batches
  has_many :students, through: :student_batches
  has_many :messages, dependent: :destroy

  has_many :batch_assignments
  has_many :assignments, through: :batch_assignments
  
  has_many :trackers, dependent: :destroy
  belongs_to :user
  belongs_to :course
  validates :title, :start_date, :end_date, presence: true
  
end
