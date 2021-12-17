class Event < ApplicationRecord

    has_many :communities
    belongs_to :user
    belongs_to :game
    
    validates :title, presence: true, uniqueness: true, length: { minimum: 2, maximum:20, too_long: "%{count} characters is the maximum allowed" } 
    
    validates :description, presence: true, length: { minimum: 5, maximum:200 }
    validates :game_name, presence: true
    validates :plateform, presence: true

    validate :start_date_must_be_from_today

    def start_date_must_be_from_today
    errors.add(:start_date, "Impossible de créer ou modifier un événement dans le passé.") unless start_date > DateTime.now
  end
  
end
