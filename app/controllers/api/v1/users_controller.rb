class Api::V1::UsersController < ApplicationController
    def show
        render json: {user: current_user}
    end
    
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(name: params[:name], 
        email: params[:email], 
        password: params[:password], 
        picture: params[:picture],
        age: params[:age],
        hometown: params[:hometown])

        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end
    
end
