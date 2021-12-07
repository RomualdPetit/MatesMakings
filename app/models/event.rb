class Event < ApplicationRecord

    has_many :communities
    belongs_to :user
    
end
