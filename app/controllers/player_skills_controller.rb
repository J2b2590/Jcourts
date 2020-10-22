class PlayerSkillsController < ApplicationController
    
    def new
        @player_skill = PlayerSkill.new
        @users = User.all
        @skills = Skill.all
    end

    def create

        player_skill = PlayerSkill.new(player_skill_params)
    
        if player_skill.save
            redirect_to user_path(player_skill.player)
        else
            flash[:errors] = player_skill.errors.full_messages
            
            redirect_to new_player_skill_path
        end
    end

    # def destroy
    #     @player_skill = PlayerSkill.find(params[:id])
    #     byebug

    #     @player_skill.destroy
        
    #     redirect_to game_path(@player_skill.game)
    # end

    private

    def player_skill_params
        params.require(:player_skill).permit(:player_id, :skill_id, :rating)
    end

    
end
