class Api::V1::ReviewsController < ApplicationController

    def create
        byebug
        review = Review.create(review_params)
        render json: review
    end

    def show
        render json: review
    end

    def index
        reviews = Review.all
        render json: reviews
    end

    def review_params
        params.require(:review).permit(:user_id, :brewery_id, :rating, :text)
    end
end
