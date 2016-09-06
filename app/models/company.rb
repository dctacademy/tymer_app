class Company < ActiveRecord::Base

	has_many :company_contacts
	has_many :jobs
	belongs_to :company_source
	belongs_to :state
	belongs_to :city

	validates :name, {presence: true, uniqueness: true}
end
