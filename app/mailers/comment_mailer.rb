class CommentMailer < ApplicationMailer

  def comment_added(current_user, post, comment_content)

    @current_user = current_user
    @post = post
    @comment = comment_content

    mail(to: post.user.email,
         subject: 'New comment added')
  end

end
