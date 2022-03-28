class Like < ApplicationRecord
  belongs_to :user, foreign_key: :users_id
  belongs_to :post, foreign_key: :posts_id

  def update_post_like_counter
    post.update(likes_counter: post.likes.counter)
  end
end
