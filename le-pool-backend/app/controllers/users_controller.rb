class UsersController < ApplicationController
  def index
    users = UserResource.all(params)
    respond_with(users)
  end

  def show
    user = UserResource.find(params)
    respond_with(user)
  end

  def create
    user = UserResource.build(params)

    if user.save
      render jsonapi: user, status: 201
    else
      render jsonapi_errors: user
    end
  end

  def update
    user = UserResource.find(params)

    if user.update_attributes
      render jsonapi: user
    else
      render jsonapi_errors: user
    end
  end

  def destroy
    user = UserResource.find(params)

    if user.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: user
    end
  end
end
