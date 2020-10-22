class UserReviewsController < ApplicationController

    def new
        @user_review = UserReview.new
        @users = User.all
    end

    def create
    
        user_review = UserReview.new(user_review_params)
    
        if user_review.save
            redirect_to user_path(user_review.user)
        else
            flash[:errors] = user_review.errors.full_messages
            
            redirect_to new_user_review_path
        end
    end

    # def destroy
    #     @user_review = .find(params[:id])
    #     byebug

    #     @user_review.destroy
        
    #     redirect_to user_path(@@user)
    # end

    private

    def user_review_params
        params.require(:user_review).permit(:user_id, :title, :body)
    end

end
