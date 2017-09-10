class HotelsController < ApplicationController
	before_action(:authenticate_user!, except: [:index, :show])

	def index
		@hotels = Hotel.all
	end

	def new
		@hotel = Hotel.new
	end

	def create
		@hotel = Hotel.create(params[:hotel].permit(:name, :description, :user_id))
	end

	def show
		@hotel = Hotel.find(params[:id])
	end

	def edit
		@hotel = Hotel.find(params[:id])
	end

	def update
		@hotel = Hotel.find(params[:id])
		@hotel.update(params[:hotel].permit(:name, :description, :user_id))
	end

	def destroy
		@hotel = Hotel.find(params[:id])
		@hotel.destroy
	end
end
