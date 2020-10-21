class PlayerGamesController < ApplicationController
    
    
    def new
        @player_game = PlayerGame.new
        @games = Game.all
        @users = User.all
    end

    def create

        player_game = PlayerGame.create(player_game_params)

        if player_game.save
            redirect_to game_path(player_game.game)
        else
            flash[:errors] = player_game.errors.full_messages
            redirect_to new_player_game_path
        end
    end

    private

    def player_game_params
        params.require(:player_game).permit(:player_id, :game_id)
    end

    

end
