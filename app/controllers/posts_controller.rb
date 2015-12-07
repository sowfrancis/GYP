class PostsController < ApplicationController

	def create
		@post = Post.new
		if @post.save
			redirect_to event_path
		end
	end

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new

	end



	private
		def params_post
			params.require(:post).permit(:name, :content,:event_id, :user_id)
		end
end
