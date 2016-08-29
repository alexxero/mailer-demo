class CommentsController < ApplicationController
  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    CommentMailer.comment_added(current_user, @post, @comment.content).deliver_later

    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

  def destroy
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.find(params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end    
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
