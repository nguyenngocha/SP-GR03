class ProductsController < ApplicationController

  def show
    @product = Product.find_by_id(params[:id])
    @categories = @product.incategory
  end



  def index
  
  	if(params[:search].nil? || params[:search].empty?)
		@product = Product.all
	else
		@product = Product.search(params[:category], params[:search])
	end
	if @product
  		@products = @product.paginate(page: params[:page], :per_page => 12)
  	else
  		@products = @product
  	end

  	@categories = Category.all
  end



end
