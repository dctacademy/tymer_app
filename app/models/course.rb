class Course < ActiveRecord::Base
  has_many :student_courses
  has_many :students, through: :student_courses

  has_many :course_topics
  has_many :topics, through: :course_topics
  has_many :batches
  belongs_to :user
  
  validates :name, presence: true
end
