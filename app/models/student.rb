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

  has_one :profile
  
  belongs_to :user
  belongs_to :student_source
  validates :name, presence: true
  #validates_uniqueness_of :mobile, scope: :user_id
  validates_length_of :mobile, is: 10, allow_blank: true
  #validate :check_mobile
  accepts_nested_attributes_for :profile
  def check_mobile
    unless self.learning_style == 'workshop'
      errors.add(:mobile, "needs to be present")
    end
  end

  def status
    "#{self.name} - #{self.mobile} - #{self.student_type} - #{self.temperature}"
  end

  def selection_type
    "#{self.batch_type} - #{self.learning_style}"
  end

end

