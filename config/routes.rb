Rails.application.routes.draw do
  resources :users, only: [:create]
    post 'authenticate', to: 'authentication#authenticate'
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  resources :neighborhoods, only: [:index, :show, :update]
  resources :schools, only: [:index, :show]
  resources :filter
  resources :reviews
end
