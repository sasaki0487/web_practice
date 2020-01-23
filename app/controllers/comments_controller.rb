class CommentsController < ApplicationController
	def index
    	@comments = CommentBoard.all
 	end
    
    def new
        @comment = CommentBoard.new
    end

    def create
        @cmt = CommentBoard.create(comment_params)

        if @cmt.save
            redirect_to comments_path, notice: "留言成功！"
        else
            render :new
        end
    end

    private
    def comment_params
        params.require(:comment_board).permit(:name, :comment)
    end
end
