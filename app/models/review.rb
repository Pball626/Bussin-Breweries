class Review < ApplicationRecord
    belongs_to :user
    belongs_to :brewery
    # has_many :reviewedbreweries
    # has_many :breweries, through: :reviewedbreweries
end
