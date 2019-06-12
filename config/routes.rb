Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :users, only: [:create, :show]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  resources :neighborhoods, only: [:index, :show, :update]
  resources :schools, only: [:index, :show]
  resources :filter
  resources :reviews
end
