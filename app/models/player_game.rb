class PlayerGame < ApplicationRecord
    belongs_to :player, :class_name => "User"
    belongs_to :game 

    #validates_uniqueness_of :player_id, :scope => :name
end
