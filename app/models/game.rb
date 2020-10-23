class Game < ApplicationRecord
    belongs_to :court, optional: true
    belongs_to :user, :foreign_key => "host_id", optional: true

    has_many :player_games
    has_many :players, :class_name => 'User', through: :player_games


    validates :name, uniqueness: true
    validates :name, :date, :player_count, presence: true
    validates :player_count, numericality: { greater_than: 1}
   

    def clean_date

        date = self.date

        date.strftime("%a, %d %b %Y")
    end

    def clean_time
        time = self.time

        time.strftime("%r")
    end

    def pg_count
        
        self.players.size + 1
    end

    def players_left
        self.player_count - self.pg_count
    end

end


