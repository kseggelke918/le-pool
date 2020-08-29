class GamesController < ApplicationController
    before_action :set_user

    # need serializers to be written before render statements can be written


    def index 
        # write logged_in method so we can't view games with "logging in"
        games = @user.games 
        # render json of accounts if logged in
        # otherwise render error message saying to login
    end 

    def create 
        game = @user.games.build(game_params)
        if game.save 
            # render json
        else 
            # render json error
        end 
    end 

    def show 
        game = @user.games.find_by(id: params[:id])
        # render json
    end 

    def update 
    end 

    def destroy 
        game = @user.games.find_by(id: params[:id])
        game.destroy 
    end 

    private 

    def set_user
        @user = User.find(params[:user_id])
    end 

    def game_params
        params.require(:game).permit(:user_id, :game_name)
    end 

end
