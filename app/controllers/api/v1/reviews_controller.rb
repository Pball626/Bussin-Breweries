class Api::V1::ReviewsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def create
        #review needs a user id and brewery id
        #current_user.id is the user id 
        #find or create brewry by the api's unique id 
        review = Review.new(review_params)
        review.user_id = current_user.id 
        brewery = params['review']['brewery']
        # brewery_id = params[:review][:brewery_id]
        # rating = params[:review][:rating]
        # text = params[:review][:text]
        # review_id = Review.count+1
        # review = Review.create(id: review_id, user_id: user_id, brewery_id: brewery_id, rating: 1, text: text)
        # review = Review.create(review_params)
        # byebug
        review.brewery_id = Brewery.find_or_create_by(name: brewery['name'], city: brewery['city'], state: brewery['state'], website: brewery['website'], number: brewery['number'], api_id: brewery['id']).id
        # create validation for text has to be more than 10 chars and add .valid on end of review instead of save
        if review.save
            # byebug
        render json: review, status: :created
        else
            render json: review.errors, status: :unprocessable_entity
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

    private
    def review_params
        params.require(:review).permit(:user_id, :brewery_id, :rating, :text, :id)
    end

    # def data_params
    #     params.require(:data).permit(:user_id, :brewery_id, :rating, :text, :id)
    # end


end
