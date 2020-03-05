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

    def self.most_active
        self.all.sort {|a,b|
            b.posts.count <=> a.posts.count
    }.first
    end

    def self.least_active
        self.all.sort {|a,b|
            b.posts.count <=> a.posts.count
    }.last
    end

    def self.longest_name 
        self.all.sort {|a,b|
        b.name.length <=> a.name.length
    }.first
    end

end
