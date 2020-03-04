class Category < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts

    def self.sorted
        self.all.sort {|a,b|
            b.posts.count <=> a.posts.count
          }
    end

    def self.most_popular_category
        self.all.sort {|a,b|
            b.posts.count <=> a.posts.count
    }.first
    end


end
