class UsersController < ApplicationController
	before_action(:authenticate_user!, except: [:index, :show])

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user].permit(:name, :profile, :headline, :email))
	end
	
	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(params[:user].permit(:name, :profile, :headline, :email))
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

end
