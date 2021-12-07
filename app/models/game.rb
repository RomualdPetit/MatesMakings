class Game < ApplicationRecord
    has_one :community
    belongs_to :user
end
