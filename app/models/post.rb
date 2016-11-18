class Post < ActiveRecord::Base
  has_many :comments

  def censorship
    if (id == 1) || (id % 5 == 0)
      title = "SPAM"
    end
  end

end
