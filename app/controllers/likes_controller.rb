class LikesController < ApplicationController

    def upvote
        byebug
        Like.create(user_id: session[:user_id], post_id: strong_params[:post_id])
    end




  

    private 

    def strong_params 
        params.require(:like).permit(:post_id)
    end 

end


# <button><%=link_to "Like", controller: "likes", action: "create", method: :post, name: "post_id", post_id: post.id%> </button>  <%=post.likes.count%>
