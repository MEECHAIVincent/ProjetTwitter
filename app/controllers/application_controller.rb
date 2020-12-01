class ApplicationController < ActionController::Base
    
    before_action :retrive_current_user
    
    def retrive_current_user
        if session[:user_token] != nil
            user = User.find_by(id: session[:user_token])
            @current_user = user
        end
    end
end
