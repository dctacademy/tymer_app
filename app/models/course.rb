class Course < ActiveRecord::Base
  has_many :student_courses
  has_many :students, through: :student_courses
  has_many :batches
  belongs_to :user
  
  validates :name, presence: true
end
