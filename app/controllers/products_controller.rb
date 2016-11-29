class ProductsController < ApplicationController

  def show
    @product = Product.find_by_id(params[:id])
    if @product.nil?
      redirect_to root_path
    else
      @categories = @product.incategory
    end
  end



  def index
  
  	if(params[:search].nil? || params[:search].empty?)
		@product = Product.all.order(created_at: :desc)
	else
		@product = Product.search.(params[:category], params[:search]).order(created_at: :desc)
	end
	if @product
  		@products = @product.order(created_at: :desc).paginate(page: params[:page], :per_page => 12)
  	else
  		@products = @product..order(created_at: :desc)
  	end

  	@categories = Category.all
  end



end
