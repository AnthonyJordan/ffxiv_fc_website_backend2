class CommentsController < ApplicationController

    def create
        character = Character.find(params[:id])
        comment = character.comments.create(comment_params)
        render json: comment, status: 200
    end

    def showAll
        screenshot= Screenshot.find(params[:id])
        render json: screenshot.comments, status: 200
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        head :no_content
    end
    private
    def comment_params
        params.permit(:comment_text, :screenshot_id)
    end
end
