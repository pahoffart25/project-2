class SessionsController < ApplicationController

    skip_before_action :authorized, only: [:new, :create, :welcome]

    def welcome 
    end

    def analytics
      @users = User.total_number_of_users
      @posts = Post.total_number_of_posts
      

    end
    
    def new
    end
    
  
    def create
      @user = User.find_by(username: params[:username])
  
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to '/login'
      end
    end
  
    def destroy
      session.delete :user_id
      redirect_to '/'
    end

    def login_required

    end

end