class CommentsController < ApplicationController
  def index
    raise 'How did i get here'
  end

  def new
    raise 'How did i get here'
  end

  def create
    comment = Comment.create(comment_params.merge(user_id: current_user.id))
    redirect_to listing_path(comment.listing_id)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:listing_id, :body)
  end
end
