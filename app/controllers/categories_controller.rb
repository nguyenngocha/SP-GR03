class CategoriesController < ApplicationController
  def new
  end

  def index
  	@categories = Category.all

  def create
  end
end
