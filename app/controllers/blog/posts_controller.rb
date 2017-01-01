module Blog
	class PostsController < ApplicationController
		before_action :set_post, only: [:show, :update, :edit, :destroy]

		def index
			@post = Post.all
		end

		def show
			
		end

		def create
			@post = Post.create(post_params)
			if @post.save
				redirect_to posts_path
			end
		end

	private

			def set_post
				@post = Post.friendly.find(params[:id])
			end

			def post_params
				params.require(:post).permit(:title, :body, :description)
			end
			
	end
end