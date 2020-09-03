class UsersController < ApplicationController
    before_action :set_user
    
    def create 
        @user = User.new(user_params)
        if @user.save 
            # set session?? session[:user_id] = @user.id
            render json: @user 
        else 
            render json: {error: 'Error creating user'}
        end 
    end 

    def show 
        render json: @user
    end 

    def update 
        render json: {message: 'this is the update'}
    end 

    def destroy 
    end 

    private 

    def set_user
        @user = User.find_by(id: params[:id])
    end 

    def user_params
        params.require(:user).permit(:name, :email)
    end 

end
