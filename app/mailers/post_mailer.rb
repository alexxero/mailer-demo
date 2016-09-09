class PostMailer < ApplicationMailer

  def post_created(user, post)
    @user = user
    @post = post
    mail(to: user.email,
         subject: 'New post created')
  end

  def admin_notifier(user, post)
    @user = user
    @post = post
    @admin = User.find_by(name: 'admin')
    mail(to: @admin.email,
         subject: "#{@user.name} just created a new post: '#{@post.title}'")
  end

end
