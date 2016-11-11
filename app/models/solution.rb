class Solution < ActiveRecord::Base
	belongs_to :assignment

	validates :body, {presence: true, length: {minimum: 10}}
end
