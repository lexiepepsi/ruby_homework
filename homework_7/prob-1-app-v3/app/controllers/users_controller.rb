class UsersController < ApplicationController
	before_action(:authenticate_user!, except: [:index])
	before_action(:find_user, only: [:show, :edit, :update, :destroy])
	before_action(:redirect_to_homepage_unless_user_belongs_to_current_user, only: [:edit, :update])


	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	def update
		@user.update(params[:user].permit(:name, :profile, :headline))

		if @user.valid?
			redirect_to_user('Sucessfully updated!')
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

	def redirect_to_homepage_unless_user_belongs_to_current_user
		unless @user.admin_or_belongs_to?(current_user)
			redirect_to(root_path, notice: 'That is not yours!')
		end
	end


end
