class StudentBatch < ActiveRecord::Base
  belongs_to :student
  belongs_to :batch
end
