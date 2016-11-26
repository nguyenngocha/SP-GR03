class ProductsController < ApplicationController

  def show
  end



  def index
	@product = Product.search(params[:abc], params[:search])
  	@products = @product.paginate(page: params[:page], :per_page => 12)
  	@categories = Category.all
  end



end
