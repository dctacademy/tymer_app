class Student < ActiveRecord::Base
  has_many :payment_details
  
  has_many :student_courses
  has_many :courses, through: :student_courses
  
  has_many :student_notes, dependent: :destroy
  
  has_many :student_batches
  has_many :batches, through: :student_batches

  has_many :student_assignments
  has_many :batch_assignments, through: :student_assignments

  has_many :activities
  
  belongs_to :user
  belongs_to :student_source
  validates :name, presence: true
  #validates_uniqueness_of :mobile, scope: :user_id
  validates_length_of :mobile, is: 10, allow_blank: true
  validate :check_mobile
  
  def check_mobile
    unless self.learning_style == 'workshop'
      errors.add(:mobile, "needs to be present")
    end
  end

  def status
    "#{self.name} - #{self.mobile} - #{self.student_type} - #{self.temperature}"
  end
end

