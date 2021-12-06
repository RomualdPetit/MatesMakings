class Event < ApplicationRecord

    has_one :game
    has_many :users, through :game
end
