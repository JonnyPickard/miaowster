class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to home_index_path
  end

  private

  def comment_params
    params.require(:comment).permit(:image_id, :content)
  end
end
