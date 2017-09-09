class UsersController < ApplicationController
	# before_action(:authenticate_user!)
	before_action(:authenticate_user!, except: [:index, :show])
	before_action(:find_user, only: [:show, :edit, :update, :destroy])


	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user].permit(:name, :profile, :headline))
	end

	def show
		# @user = User.find(params[:id])
	end

	def edit
		# @user = User.find(params[:id])
	end

	def update
		# @user = User.find(params[:id])
		@user.update(params[:user].permit(:name, :profile, :headline))
	end

	def destroy
		# @user = User.find(params[:id])
		@user.destroy
	end

	private

	def find_user
		@user = User.find(params[:id])
	end

end
