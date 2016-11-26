class CategoriesController < ApplicationController
  def new
  end

  def index
  	@categories = Category.all
  end

  def create
  end
end
