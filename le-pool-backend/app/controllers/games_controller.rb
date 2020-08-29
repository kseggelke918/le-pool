class GamesController < ApplicationController
    before_action :set_user

    def index 
        
    end 

    def create 
    end 

    def show 
    end 

    def update 
    end 

    def destroy 
    end 

    private 

    def set_user
        @user = User.find(params[:user_id])
    end 

end
