class PostsController < ApplicationController 

	def new 
		@post = Post.new		
	end

	def create 
		@post = Post.new(post_params)

		if @post.save
			redirect_to dashboard_path, flash: { success: "Post was created successfully! " }
		else 
			redirect_to new_post_path, flash: { danger: "Post was not saved! " }

		end
	end

	def show

	end

	private 

	def post_params
		params.require(:post).permit(:immage, :image_cache)
	end

end