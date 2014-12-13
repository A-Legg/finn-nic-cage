Rails.application.routes.draw do

  get 'movies/new'

  get 'movies/create'

  root "home#index"

  resources :movies
end


