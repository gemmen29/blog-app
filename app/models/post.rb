class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :user, foreign_key: :users_id

  def update_post_user_counter
    user.update(user.posts_counter: user.posts.counter)
  end

  def five_most_recent_comments
    comments.last(5)
  end
end
