# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview
  def post_created_preview
    PostMailer.post_created(User.last, Post.last)
  end
end
