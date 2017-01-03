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

  def new_post(user, post)
    headers["In-Reply-To"] = "<post/#{post.id}@mighty-shelf-88769.example>"
    headers["References"] = "<post/#{post.id}@mighty-shelf-88769.example>"

    @user = user
    @post = post

    mail(to: user.email, subject: "You created a new post: #{post.title}. You will recive email updates on your post when it is commented on")
  end
end
