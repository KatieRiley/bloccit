class FavoriteMailer < ApplicationMailer
  default from: "katieanriley@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@mighty-shelf-88769.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@mighty-shelf-88769.example>"
    headers["References"] = "<post/#{post.id}@mighty-shelf-88769.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
