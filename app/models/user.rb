class User < ApplicationRecord
    belongs_to :player_game, :foreign_key => 'player_id'

    has_many :games, :foreign_key => 'host_id'

end
