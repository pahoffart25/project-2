class Category < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts
    def self.avg_number_post_per_category
        self.posts.inject(0){|sum, post| sum += self.post}/self.posts.count
    end
end
