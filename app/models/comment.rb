class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    
    def total_number_of_comments_per_post
    self.posts.inject(0){|sum,comment| sum += self.comment}
    end
end
