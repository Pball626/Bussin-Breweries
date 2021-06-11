class Api::V1::BreweriesController < ApplicationController
    require 'rest-client'
    skip_before_action :authorized, only: [:get_breweries]

    def get_breweries
        url = 'https://api.openbrewerydb.org/breweries'
        response = RestClient.get(url)
        render json: response
    end

    def show
        url = "https://api.openbrewerydb.org/breweries/#{params[:id]}"
        response = RestClient.get(url)
        render json: response 
    end
    
end
