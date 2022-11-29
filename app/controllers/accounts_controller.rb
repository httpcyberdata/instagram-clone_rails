class AccountsController < ApplicationController
	# before_action :authenticate_account!
	def index
		# @posts = Post.active
		@posts = Posts.active
	end

	def show

	end
end
