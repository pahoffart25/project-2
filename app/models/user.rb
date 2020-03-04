class User < ApplicationRecord
    has_secure_password

    has_many :likes
    has_many :comments
    has_many :posts
    has_many :categories, through: :posts

    validates :username, uniqueness: true

    def self.total_number_of_users
        self.all.count
    end
  
end
