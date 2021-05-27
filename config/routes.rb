Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, except: :create
      resources :breweries
      resources :reviewedbreweries
      resources :reservedbreweries
      resources :reviews
      resources :reservations
      resources :likes
      post '/login', to: "auth#login"
      get '/brewerieslist', to: 'breweries#get_breweries'
      post '/signup', to: 'users#create'
    end
  end
end
