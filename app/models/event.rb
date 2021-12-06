class Event < ApplicationRecord
    belongs_to :game
    belongs_to :users
end
