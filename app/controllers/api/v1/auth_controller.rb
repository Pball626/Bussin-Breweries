class Api::V1::AuthController < ApplicationController
    def login
        # byebug
        user = User.find_by(email: auth_param[:email])
        if user && user.authenticate(auth_param[:password])
            #  send back a token
            
            render json: {name: user.name, token: JWT.encode({user_id: user.id}, 'hooplah')}
            
        else 
            # send an errord
            # byebug
            render json: {error: "Incorrect Email or Password"}
        end
    end

        
    
        # strong params
    def auth_param
        params.require(:auth).permit(:name, :email, :password)
    end
end
