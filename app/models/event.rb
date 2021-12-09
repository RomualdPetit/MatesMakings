class Event < ApplicationRecord

    has_many :communities
    belongs_to :user
    belongs_to :game
    
    
end
