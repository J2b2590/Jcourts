class GamesController < ApplicationController

    before_action :find_game, only: [:show, :edit, :update, :destroy]

    def index
        @games = Game.all
        @courts = Court.all
    end

    def show
        
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

    def edit
       
    end

    def update
        @game.update(game_params)
        if @game.save 
            redirect_to game_path(@game)
        else 
            render :edit
        end
    end

    

    def update
        @project = Project.find(params[:id])

        @project.update(project_params(:information))
        if @project.save 
            redirect_to project_path(@project)
        end
    end

    def destroy
        
        @game.delete

        redirect_to games_path
    end



    private

    def find_game
        @game = Game.find(params[:id])
      end

    def game_params
        params.require(:game).permit(:host_id, :court_id, :date, :time, :player_count)
    end
end
