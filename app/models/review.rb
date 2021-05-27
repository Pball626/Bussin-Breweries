class Review < ApplicationRecord
    belongs_to :user
    has_many :reviewedbreweries
    has_many :breweries, through: :reviewedbreweries
end
