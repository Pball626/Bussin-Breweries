Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :breweries
      post '/login', to: "auth#login"
      get '/brewerieslist', to: 'breweries#get_breweries'
    end
  end
end
