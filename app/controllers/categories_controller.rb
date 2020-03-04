class CategoriesController < ApplicationController
  before_action :find_category, only: [:show]
  def index
    @categories = Category.sorted
  end

  def show
  end

  private 
  def find_category
    @category = Category.find(params[:id])
  end
  def strong_params
    params.require.permit(:name)
  end
end
