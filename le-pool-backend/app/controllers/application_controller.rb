class ApplicationController < ActionController::Base
    include Graphiti::Rails
    include Graphiti::Responders

    def logged_in?
        !!current_user
    end 

    def current_user 
        User.find_by(id: session[:user_id])
    end 
end
