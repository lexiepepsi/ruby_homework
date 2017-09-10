class HotelsController < ApplicationController

	def index
		@hotels = Hotel.all
	end

	def new
		@hotel = Hotel.new
	end

	def create
		@hotel = Hotel.create(params[:hotel].permit(:name, :description))
	end

	def show
		@hotel = Hotel.find(params[:id])
	end

	def edit
		@hotel = Hotel.find(params[:id])
	end

	def update
		@hotel = Hotel.find(params[:id])
		@hotel.update(params[:hotel].permit(:name, :description))
	end

	def destroy
		@hotel = Hotel.find(params[:id])
		@hotel.destroy
	end
end
