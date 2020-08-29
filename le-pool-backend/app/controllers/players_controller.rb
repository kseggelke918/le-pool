class PlayersController < ApplicationController
    # write before action for finding player when refactoring

    def index 
        # do we want to show all players or just the players associated with the game selected...
        # need to think about the functionality wanted here
    end 

    def create 
        player = Player.create(player_params)
        if player.save 
            # render json with serializer
        else 
            # render json error
        end 
    end 

    def show 
        player = Player.find_by(id: params[:id])
        # render json with serializer
    end 

    def update 
        player = Player.find_by(id: params[:id])
        player.update(player_params)
        if player.valid?
            # render serialized json
        else 
            # render json error message
        end 
    end 

    def destroy 
        player = Player.find_by(id: params[:id])
        player.destroy
    end 

    private 

    def player_params
        # how necessary is this?
        params.require(:player).permit(:name)
    end 
end
