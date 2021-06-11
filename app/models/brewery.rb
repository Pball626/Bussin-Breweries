class Brewery < ApplicationRecord
   has_many :reviews
   has_many :users, through: :reviews

   has_many :reservations
   # has_many :reviews 
end
