class GamesController < ApplicationController

    def index
        @games = Game.all
        @courts = Court.all
    end

    def show
        @game = Game.find(params[:id])
        @player_games = PlayerGame.all
    end

    def new
        @game = Game.new
        @courts = Court.all
        @users = User.all
        
        # how to create a user host id
    end

    def create
        @game = Game.create(game_params)

        if @game.save 
            redirect_to games_path
        else 
            render :new 
        end 
    end

    


    private

    def game_params
        params.require(:game).permit(:host_id, :court_id, :date, :time, :player_count)
    end
end
