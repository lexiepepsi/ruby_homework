class UsersController < ApplicationController
	# before_action(:authenticate_user!)
	before_action(:authenticate_user!, except: [:index, :show])
	before_action(:find_user, only: [:show, :edit, :update, :destroy])
	def index
		@users = User.all
	end

	# def new
	# 	@user = User.new
	# end

	# def create
	# 	@user = User.create(params[:user].permit(:name, :profile, :headline))
	# end

	def show
	end

	def edit
	end

	def update
		@user.update(params[:user].permit(:name, :profile, :headline))

		if @user.valid?
			redirect_to_user('Your account was sucessfully updated!')
		else
			render(:edit)
		end
	end

	def destroy
		@user.destroy
	end

	private

	def find_user
		@user = User.find(params[:id])
	end

	def redirect_to_user(message)
		redirect_to(@user, notice: message)
	end


end
