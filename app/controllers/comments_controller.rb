class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.activity_id = params[:activity_id]

    @comment.save

    redirect_to activity_path(@comment.activity)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end


end
