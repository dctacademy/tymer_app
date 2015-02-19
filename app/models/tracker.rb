class Tracker < ActiveRecord::Base
  belongs_to :user
  belongs_to :batch
  validates :batch_id, :start_datetime, :end_datetime, :description, presence: true
end
