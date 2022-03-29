class Like < ApplicationRecord
  belongs_to :user, foreign_key: :users_id
  belongs_to :post, foreign_key: :posts_id

  after_save :update_post_like_counter

  def update_post_like_counter
    post.increment!(:likes_counter)
  end
end
