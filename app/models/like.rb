class Like < ApplicationRecord
    belongs_to :post
    belongs_to :user

    def self.total
        self.all.count
    end
end
