class Reservation < ApplicationRecord
    belongs_to :user
    has_many :reservedbreweries
    has_many :breweries, through: :reservedbreweries
end
