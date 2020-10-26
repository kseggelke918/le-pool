class SessionsController < ApplicationController

    def create 
        @user = User.find_by(email: params[:session][:email])

        # since no pw, don't need to authenticate?
        # think about if we want to authenticate...

        # if we authenticate, need to use .authenticate for the password
        # using if/else
    end 

    def get_current_user 
        if logged_in?
            # render json 
        else 
            # render json error
        end 

    end 

    def destroy 
        session.clear 
    end 



end
