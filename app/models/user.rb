class User < ApplicationRecord
   belongs_to :player_game, :foreign_key => 'player_id', optional: true

    has_many :games, :foreign_key => 'host_id'
    

    validates :name, uniqueness: true
    validates :name, :age, presence: true

    validates :age, numericality: {greater_than_or_equal_to: 18, message: "You must be 18 or older to sign up"}



    has_many :player_skills, :foreign_key => 'player_id'
    has_many :skills, :class_name => 'User', through: :player_skills


    has_many :user_reviews 
    enum gender: [:undisclosed, :female, :male, :other]

end
