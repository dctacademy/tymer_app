class StudentNote < ActiveRecord::Base
  belongs_to :student
  validates :note, presence: true
end
