class Review < ApplicationRecord
    belongs_to :user
    belongs_to :user_review

    validates :rating, presence: true, length: { in: 1..5}
    validates :comment, presence: true, length: { in: 1..200 }

end
