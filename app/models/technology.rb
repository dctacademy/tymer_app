class Technology < ActiveRecord::Base
	belongs_to :technology_category

	validates :name, :technology_category_id, presence: true
end
