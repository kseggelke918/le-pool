class GamesController < ApplicationController

  def index
    # You just pass all the params through and it knows how to deal with
    # user_id. This makes /api/games/1 and /api/users/1/games work, and
    # it also makes /api/users/1/games?include=user work
    respond_with GameResource.all(params)
  end

  def show
    # Same here. /api/games/1?include=user works
    respond_with GameResource.find(params)
  end

  def create
    # the params will include a user_id and should also include
    # `{ data: { attributes } }`. `GameResource.build` creates
    # a new Game based on the params (including user_id) and is
    # ready to save.
    game = GameResource.build(params)

    # try to save the new game
    if game.save
      render jsonapi: game, status: 201
    else
      render jsonapi_errors: game
    end
  end

  def update
    # the params will include a user_id and should also include
    # `{ data: { attributes } }`. In this case, `find` both
    # finds the object and populates it with the updated attributes.
    game = GameResource.find(params)

    # try to update the new game
    if game.update_attributes
      render jsonapi: game
    else
      render jsonapi_errors: game
    end
  end

  def destroy
    # the params will include `id` and `user_id` and it will find
    # the matching GameResource, just like in `show`.
    game = GameResource.find(params)

    # try to destroy the game
    if game.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: game
    end
  end

end
