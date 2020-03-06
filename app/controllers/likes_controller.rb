class LikesController < ApplicationController

    def create
        @like = Like.create(user_id: session[:user_id], post_id: strong_params[:post_id])
        redirect_to user_path(@like.post.user)
    end


    private 

    def strong_params 
        params.permit(:post_id)
    end 

end


