class PostMailer < ApplicationMailer

  def post_created(user, post)
    @user = user
    @post = post
    mail(to: user.email,
    subject: 'New post created')
  end

end
