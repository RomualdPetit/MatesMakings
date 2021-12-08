class Community < ApplicationRecord
    validates_uniqueness_of :user_id, scope: :game_id
    belongs_to :user
    belongs_to :game
end
