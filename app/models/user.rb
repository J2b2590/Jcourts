class User < ApplicationRecord
   belongs_to :player_game, :foreign_key => 'player_id', optional: true

    has_many :games, :foreign_key => 'host_id'


    validates_uniqueness_of :name
end
