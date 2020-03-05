class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user


    def self.newest
        self.all.sort {|a,b|
            b.created_at <=> a.created_at
    }.first
    end

    def self.oldest
        self.all.sort {|a,b|
            b.created_at <=> a.created_at
    }.last
    end

    def self.total_comments
        self.all.count
    end

    def self.sorted
        self.all.sort {|a,b|
            b.created_at <=> a.created_at
          }
    end
end
