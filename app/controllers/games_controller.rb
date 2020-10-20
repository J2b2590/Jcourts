class GamesController < ApplicationController


    def new
        @game = Game.new
        @courts = Court.all
        @users = User.all
        
        # how to create a user host id
    end

    def create

        @game = Game.new(game_params)
        @user = User.find(params[:id])
        if @game.save 
            redirect_to player_games_path(@game.player_games)
        else 
            render :new 
        end 
    end


    private

    def game_params
        params.require(:game).permit(:host_id, :court_id, :date, :time, :player_count)
    end
end
