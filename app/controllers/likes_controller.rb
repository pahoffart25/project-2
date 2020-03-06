class LikesController < ApplicationController

    def create
        @like =Like.new(user_id: session[:user_id], post_id: strong_params[:post_id])
        if

        redirect_to user_path(@like.post.user)
    end


    private 

    def strong_params 
        params.permit(:post_id)
    end 

end


