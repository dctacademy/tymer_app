class TagsController < ApplicationController

	def index
		@tags = ActsAsTaggableOn::Tag.all
	end

	def create
		@tag = ActsAsTaggableOn::Tag.new(params[:acts_as_taggable_on_tag].permit(:name))
		@tag.save
	end
end
