class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy, :like]

  def new
    @post = Post.new
    @categories = Category.all
  end


  def create
    @post = Post.create(strong_params)
    redirect_to user_path(session[:user_id])
  end

  def edit
  end

  def update
    @post.update(strong_params)

  end

  def destroy
    @user = User.find(params[:user_id])
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
