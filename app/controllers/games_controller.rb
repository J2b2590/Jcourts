class GamesController < ApplicationController


    def new
        @game = Game.new
    end

    def create

        @court = Court.all
        @host = User.all

        @game = Game.new(game_params)
        @game.save 

        
    end



    private

    def game_params
        params.require(:game).permit(:host_id, :court_id, :date, :time , :player_count)
    end
end
