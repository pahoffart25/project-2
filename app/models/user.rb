class User < ApplicationRecord
    has_many :likes
    has_many :comments
    has_many :posts
    has_many :categories, through: :posts
end
