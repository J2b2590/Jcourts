class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path(@user)
        end
    end

    def edit
    #    @user = User.find(user_params)
    end

    def update
        
        @user.update(user_params)
        
        if @user.save 
            redirect_to user_path(@user)
        else 
            render :edit
        end
    end


    def show
        # @user = User.find(params[:id])
    end

    def destroy
        
        @user.delete

        redirect_to users_path
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit( :name, :age, :game_id)
    end

end
