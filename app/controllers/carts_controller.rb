class CartsController < ApplicationController
  def show
  	if logged_in?
  		@cart = current_cart
  	else
  		redirect_to login_path
  	end
	end

	def destroy
		for cart_item in current_cart.cartdetails
			cart_item.destroy
		end
		redirect_to current_cart
	end
end
