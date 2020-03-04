class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    belongs_to :user
    belongs_to :category

    def self.total_number_of_post
        self.all.count
    end
end
