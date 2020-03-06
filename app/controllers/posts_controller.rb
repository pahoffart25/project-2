class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy, :like]

  def new
    @post = Post.new
    @categories = Category.all
  end


  def create
    @post = Post.new(strong_params)
      if @post.valid?
          @post.save
          redirect_to user_path(session[:user_id])
      else
        flash[:errors] = @post.errors.full_messages
        redirect_to new_post_path
      end
  end

  def edit
  end

  def update
    @post.update(strong_params)

  end

  def destroy
    @post.destroy
    redirect_to user_path(session[:user_id])
  end

  private 
  def find_post
    @post = Post.find(params[:id])
  end
  
  def strong_params
    # byebug
    params.permit(:user_id,:category_id,:content)
  end
end
