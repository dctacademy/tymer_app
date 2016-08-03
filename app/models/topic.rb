class Topic < ActiveRecord::Base

	has_many :course_topics
	has_many :courses, through: :course_topics

	has_many :assignments

	has_many :chapters
	accepts_nested_attributes_for :chapters
end
