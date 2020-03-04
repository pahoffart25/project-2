class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit,:update,:destroy]
  def create
    @comment = Comment.create(strong_params)
    @posts = Post.all
    redirect_to user_path(@comment.user)
  end
  def new
    @comment = Comment.new
    @posts = Post.all
  end

  def edit
  end

  def update
    @comment.update 
  end

  def destroy
    @comment.destroy
  end
  private 
  def find_comment
    @comment = Comment.find(params[:id])
  end
  def strong_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
