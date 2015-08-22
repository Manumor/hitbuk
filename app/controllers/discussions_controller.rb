class DiscussionsController < ApplicationController
	def index
		@discussions = Discussion.all
	end
	def show 
		@discussion = Discussion.find(params[:id])
	end
	def new
		@discussion = Discussion.new
	end
	def create
		@discussion = Discussion.new(discussion_params)

		if @discussion.save
			redirect_to @discussion
		else
			render 'new'
		end
	end

	private

	def discussion_params
		params.require(:discussion).permit(:title, :body)
	end
end
