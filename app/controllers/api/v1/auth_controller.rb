class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]
    def login
        # byebug
        user = User.find_by(email: auth_param[:email])
        if user && user.authenticate(auth_param[:password])
            #  send back a token
            createdtoken = encode_token({user_id: user.id})

            render json: {user: user, token: createdtoken}, status: :accepted
            
        else 
            # send an errord
            # byebug
            render json: {error: "Incorrect Email or Password"}, status: :unauthorized
        end
    end

        
    
        # strong params
    def auth_param
        params.require(:auth).permit(:email, :password)
    end
end
