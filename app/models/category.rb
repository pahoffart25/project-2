class Category < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts

    def self.sorted
        Category.all.sort {|a,b|
            b.posts.count <=> a.posts.count
          }
    end

end
