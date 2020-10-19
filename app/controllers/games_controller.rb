class GamesController < ApplicationController


    def new
        @game = Game.new
        @courts = Court.all
        
        # how to create a user host id
    end

    def create
        

        @game = Game.new(game_params)
        if @game.save 
            redirect_to player_game_path(@game.player_game)
        else 
            render :new 
        end 

    end
    private

    def game_params
        params.require(:game).permit(:host_id, :court_id, :date, :time, :player_count)
    end
end
