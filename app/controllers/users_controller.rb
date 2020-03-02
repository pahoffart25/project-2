class UsersController < ApplicationController
  before_action :find_user, only: [:show,:edit,:update,:destroy]
  def index
    @users = User.all 
  end

  def show
   @comment = Comment.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(strong_params)
  end

  def edit
  end

  def update
    @user.update(strong_params)
  end

  def destroy
    @user.destroy
  end
  private 
  def find_user 
    @user = User.find(params[:id])
  end
  def strong_params
    params.require(:user).permit(:name,:username,:password,:bio,:photo_url)
  end
end
