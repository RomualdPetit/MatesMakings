class Game < ApplicationRecord
    has_one :community
    has_many :user
end
