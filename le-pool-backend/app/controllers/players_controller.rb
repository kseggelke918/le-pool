class PlayersController < ApplicationController
  def index
    players = PlayerResource.all(params)
    respond_with(players)
  end

  def show
    player = PlayerResource.find(params)
    respond_with(player)
  end

  def create
    player = PlayerResource.build(params)

    if player.save
      render jsonapi: player, status: 201
    else
      render jsonapi_errors: player
    end
  end

  def update
    player = PlayerResource.find(params)

    if player.update_attributes
      render jsonapi: player
    else
      render jsonapi_errors: player
    end
  end

  def destroy
    player = PlayerResource.find(params)

    if player.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: player
    end
  end
end
