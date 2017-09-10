class HotelsController < ApplicationController
	before_action(:authenticate_user!, except: [:index, :show])
	before_action(:find_hotel, only: [:show, :edit, :update, :destroy])
	before_action(:redirect_to_homepage_unless_hotel_belongs_to_current_user, only: [:edit, :update])


	def index
		@hotels = Hotel.all
	end

	def new
		@hotel = Hotel.new
	end

	def create
		@hotel = Hotel.create(params[:hotel].permit(:name, :description, :user_id))

		if @hotel.valid?
			redirect_to_hotel('Sucessfully created!')
		else
			render(:new)
		end
	end

	def show
	end

	def edit
	end

	def update
		@hotel.update(params[:hotel].permit(:name, :description, :user_id))

		if @hotel.valid?
			redirect_to_hotel('Sucessfully updated!')
		else
			render(:edit)
		end
	end

	def destroy
		@hotel.destroy
	end

	private

	def find_hotel
		@hotel = Hotel.find(params[:id])
	end

	def redirect_to_hotel(message)
		redirect_to(@hotel, notice: message)
	end

	def redirect_to_homepage_unless_hotel_belongs_to_current_user
		unless @hotel.admin_or_belongs_to?(current_user, @hotel.id)
			redirect_to(hotels_path, notice: 'That is not yours!')
		end
	end

end
