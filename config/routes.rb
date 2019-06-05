Rails.application.routes.draw do
  resources :users, only: [:create]
     post '/login', to: 'auth#create'
     get '/profile', to: 'users#profile'
  resources :neighborhoods, only: [:index, :show, :update]
  resources :filter
  resources :reviews
end
