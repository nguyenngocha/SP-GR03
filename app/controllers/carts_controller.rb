class CartsController < ApplicationController
  def show
  	if logged_in?
  		@cart = current_cart
  	else
  		redirect_to login_path
  end
end
end
