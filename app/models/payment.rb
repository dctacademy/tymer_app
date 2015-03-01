class Payment < ActiveRecord::Base
  belongs_to :batch
  belongs_to :student
end
