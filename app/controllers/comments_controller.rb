class CommentsController < ApplicationController
    
    def new
        @comment = Comment.new
    end
    
    def create
        Comment.create(commemt_params)
    end
    
    
    private
        def commemt_params
            params.require(:comment).permit(:commemt, :rate, :nickname)
        end
    
end
