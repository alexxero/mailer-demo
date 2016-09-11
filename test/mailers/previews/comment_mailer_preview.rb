
class CommentMailerPreview < ActionMailer::Preview
  def comment_added_preview
    CommentMailer.comment_added(User.last, Post.last, Comment.last.content)
  end
end
