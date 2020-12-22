class ApplicationController < ActionController::Base
    include Graphiti::Rails
    include Graphiti::Responders
    # include ::ActionController::Cookies

    def home 
        render plain: "This is the home page"
    end 


    def current_user 
        User.find_by(id: session[:user_id])
    end 
    
    def logged_in?
        !!current_user
    end 

end
