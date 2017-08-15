class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.create(params[:order].permit(:item_id, :user_id))
	end

	def show
		@order = Order.find(params[:id])
	end

	def edit
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
		@order.update(params[:order].permit(:item_id, :user_id))
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
	end
end
