class Api::V1::ReviewsController < ApplicationController

    def create
        # byebug
        review = Review.new(review_params)
        review.user_id = current_user.id
        if(review.save)
            render json: review
        else
            render json: {error: 'Failed to create review'}
        end
    end

    def show
        render json: review
    end

    def index
        # byebug
        reviews = Review.all
        render json: reviews
    end

    def review_params
        params.require(:review).permit(:user_id, :brewery_id, :rating, :text)
    end
end
