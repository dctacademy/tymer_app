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
  validates_uniqueness_of :mobile, scope: :user_id


  def status
    "#{self.name} - #{self.mobile} - #{self.student_type} - #{self.temperature}"
  end
end

