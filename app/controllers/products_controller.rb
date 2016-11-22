class ProductsController < ApplicationController

  def show
  end


  def index
  	@products = Product.paginate(page: params[:page], :per_page => 12) 
  end
end
