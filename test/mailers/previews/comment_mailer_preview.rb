
class CommentMailerPreview < ActionMailer::Preview
  def comment_added_preview
    CommentMailer.comment_added(User.last)
  end
end
