class Api::V1::LikesController < ApplicationController

    def create
        like = Like.new(like_params)
        render json: like
    end

    def show
        like = Like.all 
        render json: likes
    end

    def index
        like = Like.all
        render json: likes
    end

    def like_params
        params.require(:like).permit(:use_id, :brewry_id)
    end
end
