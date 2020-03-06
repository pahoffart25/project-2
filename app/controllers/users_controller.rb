class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :find_user, only: [:show,:edit,:update,:destroy]
 
  def show
   @comment = Comment.new
   @like = Like.new
   @categories = Category.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(strong_params)

    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to '/users/new'
    end
  end


  def edit
  end

  def update
    @user.update(strong_params)

    redirect_to user_path(session[:user_id])
  end


  private 
    def find_user 
      @user = User.find(params[:id])
    end
  def strong_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :bio, :photo_url)
  end
end
