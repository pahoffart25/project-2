class PostsController < ApplicationController
  before_action :find_post, only: [:show,:edit,:update,:destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(strong_params)
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
    params.require(:post).permit(:user_id,:category_id,:content)
  end
end
