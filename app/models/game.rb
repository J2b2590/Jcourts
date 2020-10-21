class Game < ApplicationRecord
    belongs_to :court
    belongs_to :user, :foreign_key => "host_id"

    has_many :player_games
    has_many :players, :class_name => 'User', through: :player_games


    validates :name, uniqueness: true
    validates :name, :date, presence: true
   

    def clean_date

        date = Date.parse(self.date)

        date.strftime("%a, %d %b %Y")
    end

    def clean_time
        time = self.time


        time.strftime("%r")
    end

    def timezone
        time = self.time

        if time < 12 
            return "am"
        else
            return "pm"
        end
    end


end


