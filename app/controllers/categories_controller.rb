class CategoriesController < ApplicationController
  before_action :find_category, only: [:show]
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(strong_params)

  end

  private 
  def find_category
    @category = Category.find(params[:id])
  end
  def strong_params
    params.require.permit(:name)
  end
end
