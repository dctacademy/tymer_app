class Company < ActiveRecord::Base

	has_many :company_contacts
	has_many :jobs
	belongs_to :company_source
	belongs_to :state
	belongs_to :city

	validates :name, {presence: true, uniqueness: true}
	accepts_nested_attributes_for :company_contacts, allow_destroy: true
end
