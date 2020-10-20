class PlayerGamesController < ApplicationController

    def show
        @player_game = PlayerGame.find(params[:id])
    end

end
