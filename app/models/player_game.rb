class PlayerGame < ApplicationRecord
    belongs_to :player, :class_name => "User"
    belongs_to :game 

end
