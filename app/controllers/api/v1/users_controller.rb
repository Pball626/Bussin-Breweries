class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def show
        render json: {user: current_user}
    end
    
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_params)
            byebug
            render json: {user: user, token: token}
        else 
            render json: {error: 'invalid'}
        end

    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :picture, :age, :hometown)
    end
    
end
