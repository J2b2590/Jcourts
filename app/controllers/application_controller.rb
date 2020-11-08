class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def current_user
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        session[:user_id]
    end
end
