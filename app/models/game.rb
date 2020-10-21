class Game < ApplicationRecord
    belongs_to :court
    belongs_to :user, :foreign_key => "host_id"

    has_many :player_games
    has_many :players, :class_name => 'User', through: :player_games



    def clean_date

        date = Date.parse(self.date)

        date.strftime("%a, %d %b %Y")
    end


end


