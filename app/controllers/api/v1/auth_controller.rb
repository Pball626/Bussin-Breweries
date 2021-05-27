class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]
    def login
        # byebug
        foundUser = User.find_by(email: auth_param[:email])
        if foundUser && foundUser.authenticate(auth_param[:password])
            #  send back a token
            createdtoken = encode_token({user_id: foundUser.id})

            render json: {user: foundUser, token: createdtoken}, status: :accepted
            
        else 
            # send an errord
            # byebug
            render json: {error: "Incorrect Email or Password"}, status: :unaccepted
        end
    end

        
    
        # strong params
    def auth_param
        params.require(:auth).permit(:email, :password)
    end
end
