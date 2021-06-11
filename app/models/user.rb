class User < ApplicationRecord
    has_secure_password
    validates :name, presence:true
    validates :email, presence:true, uniqueness:true

    # has_many :likes
    # has_many :breweries, through: :likes

    has_many :reservations
    # has_many :breweries, through: :reservations

    has_many :reviews 
    has_many :breweries, through: :reviews

    # has_many :reservations
    # has_many :reservedbreweries through: :reservations, source: :brewery

    # has_many :reviews
    # has_many :reviewedBreweries through: :reviews, source: :brewery
end
