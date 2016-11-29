class OrdersController < ApplicationController
	before_action :logged_in_user
  def new
  	@order = Order.new
  	@cart = current_cart
  	@address = current_user.address_lists
  end

  def create
  	@address = current_user.address_lists
  	if current_cart.cartdetails.count == 0
  		flash[:danger] = "Please add product before check out"
  		redirect_to root_path
  		return
  	end
  	if !@address.any?
  	redirect_to new_address_list_path
  	else
  		puts "______"+params[:address_id].to_s+"|"+params[:note].to_s+"______________"
  		@order = Order.create({:note => a['note'],:payment=>current_cart.total_price,:user_id => current_user.id,:address=>(AddressList.find_by_id(a['address_id']).to_string())})
  		for c in current_cart.cartdetails
  			OrderDetail.create({:amount=>c.amount,:order_id=>@order.id,:product_id=>c.product_id})
  		end
  		current_cart.destroy()
  		flash[:success] = "Sent order. We will contact soon. Thank you!"
  		redirect_to root_path
  	end
  end

  def a
      params.require(:order).permit(:address_id, :note)
  end

end
