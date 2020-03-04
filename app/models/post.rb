class Post < ApplicationRecord
    has_many :comments
    has_many :likes
    belongs_to :user
    belongs_to :category

    def self.total_number_of_posts
        self.all.count
    end

    def self.most_liked_post
        self.all.sort {|a,b|
        b.likes.count <=> a.likes.count
    }.first
    end

    def self.least_liked_post
        self.all.sort {|a,b|
        b.likes.count <=> a.likes.count
    }.last
    end


    def self.longest
        self.all.sort{|a,b|
        b.content.length <=> a.content.length
    }.first
    end
    def self.shortest
        self.all.sort{|a,b|
        b.content.length <=> a.content.length
    }.last
    end


end
