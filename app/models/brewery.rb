class Brewery < ApplicationRecord
   has_many :likes
   has_many :users, through: :likes

   has_many :reservations
   has_many :reviews 
end
