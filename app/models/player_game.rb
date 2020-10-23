class PlayerGame < ApplicationRecord
    belongs_to :player, :class_name => "User"
    belongs_to :game 

    validates :player_id, presence: true, :uniqueness => 
    { :scope => :player_id, message: " is already in the game" }
end
