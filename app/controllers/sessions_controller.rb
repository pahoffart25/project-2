class SessionsController < ApplicationController

    skip_before_action :authorized, only: [:new, :create, :welcome]

    def welcome 
    end

    def analytics
      @likes = Like.total
      @users = User.total_number_of_users
      @posts = Post.total_number_of_posts
      @fav  = Post.most_liked_post
      @active = User.most_active
      @least_active = User.least_active
      @popular = Category.most_popular_category
      @least_popular = Category.least_popular_category
      @comments= Comment.total_comments
      @average_comments = average_comments
      @least = Post.least_liked_post
      @longest = Post.longest
      @shortest = Post.shortest
      @last_comment = Comment.newest
      @last_post = Post.newest
      @first_comment = Comment.oldest
      @first_post = Post.oldest
      @average_likes = average_likes
    end

    def average_comments
      (@posts / @comments.to_f).round(2)   
    end

    def average_likes
      (@posts/ @likes.to_f).round(2)
    end


    def new
    end
    
  
    def create
      @user = User.find_by(username: params[:username])
  
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:errors] = "Either Username or Password Invalid"
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