class Like < ApplicationRecord
    belongs_to :post
    belongs_to :user

    # validates :user_id, uniqueness: true

    def self.total
        self.all.count
    end
end
