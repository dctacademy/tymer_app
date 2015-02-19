class StudentSource < ActiveRecord::Base
  has_many :students
  belongs_to :user
  validates :name, presence: true
  
end
