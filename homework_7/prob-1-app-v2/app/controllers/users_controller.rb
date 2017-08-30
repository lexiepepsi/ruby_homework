class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user].permit(:name, :email))
	end
	
	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(params:[:user].permit(:name, :email))
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

end
