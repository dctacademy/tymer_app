class Student < ActiveRecord::Base
  has_many :payment_details
  
  has_many :student_courses
  has_many :courses, through: :student_courses
  
  has_many :student_notes, dependent: :destroy
  
  has_many :student_batches
  has_many :batches, through: :student_batches
  
  belongs_to :user
  belongs_to :student_source
  validates :name, :mobile, presence: true
end
