class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user


    # def self.sorted
    #     self.all.sort {|a,b|
    #         b.posts.count <=> a.posts.count
    #       }
    # end

    def self.total_comments
        self.all.count
    end

end
