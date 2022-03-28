class Post < ApplicationRecord
  has_many :likes, :comments
  belongs_to :user
end
