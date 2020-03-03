class PostsController < ApplicationController
  before_action :find_post, only: [:show,:edit,:update,:destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.create(strong_params)
    # byebug
    redirect_to user_path(session[:user_id])
  end

  def edit
  end

  def update
    @post.update(strong_params)

  end

  def destroy
    @post.destroy
  end
  private 
  def find_post
    @post = Post.find(params[:id])
  end
  def strong_params
    # byebug
    params.require(:post).permit(:user_id,:category_id,:content)
  end
end
