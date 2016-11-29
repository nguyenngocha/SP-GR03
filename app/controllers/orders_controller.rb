class OrdersController < ApplicationController
  def new
  	@order = Order.new
  end

  def create
  end

  def update
  	session[:text] = params[:text]
  	redirect_to carts_path
  end
end
