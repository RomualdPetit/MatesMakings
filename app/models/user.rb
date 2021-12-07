class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :communities
  has_many :games, through: :communities

  has_many :participations
  has_many :events, through: :participations
  
  #validates :last_name, presence: true
  #validates :first_name, presence: true
  validates :email, presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez entrer un email valide" }  

  #validates :age, presence: true, length: { in: 10..99 }
  #validates :player_type, presence: true
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
