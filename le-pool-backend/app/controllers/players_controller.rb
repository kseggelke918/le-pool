class PlayersController < ApplicationController
    # write before action for finding player when refactoring

    def index 
        # do we want to show all players or just the players associated with the game selected...
        # need to think about the functionality wanted here
        # THINKING WE WANT TO RENDER ALL THE PLAYERS FROM '/PLAYERS' AND PLAYERS SPECIFIC TO THE USER AT '/USERS/ID/PLAYERS' 
        # AND PLAYERS SPECIFIC TO A GAME AT '/USERS/ID/GAMES/ID/PLAYERS'
        
    end 

    def create 
        player = Player.create(player_params)
        if player.save 
            render json: player
        else 
            render json: {error: 'Error creating player'}
        end 
    end 

    def show 
        player = Player.find_by(id: params[:id])
        render json: player
    end 

    def update 
        player = Player.find_by(id: params[:id])
        player.update(player_params)
        if player.valid?
            render json :player
        else 
            render json: {error: 'Could not update player'}
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
