class Api::V1::BreweriesController < ApplicationController
    require 'rest-client'
    before_action :authorized

    def get_breweries
        url = 'https://api.openbrewerydb.org/breweries'
        response = RestClient.get(url)
        render json: response
    end
    
end
