class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to event_path(@comment.event_id)
		else
			render 'new'
		end
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def destroy
		 @comment = Comment.find(params[:id]).destroy
   	redirect_to event_path(@comment)
	end

	


 private

 def comment_params
		params.require(:comment).permit(:body, :event_id, :user_id)
	end


end
