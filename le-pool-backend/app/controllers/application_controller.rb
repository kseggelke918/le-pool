class ApplicationController < ActionController::Base
    def logged_in?
        !!current_user
    end 
end
