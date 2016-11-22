class ProductsController < ApplicationController
  def new
  	
  end

  def create
  end

  def show
  end

  def _product

  end

  def index
  	@products = Product.paginate(page: params[:page], :per_page => 12) 
  end
end
