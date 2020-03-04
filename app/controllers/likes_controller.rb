class LikesController < ApplicationController

    def create
        Like.create(user_id: session[:user_id], post_id: strong_params[:post_id])

        redirect_to user_path()
    end


    private 

    def strong_params 
        params.permit(:post_id)
    end 

end


