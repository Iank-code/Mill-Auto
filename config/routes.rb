Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :cars
  resources :orders, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]

  # POST/signup
  post "/signup", to: "users#create"
  # stay logged in
  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  patch '/reset_password', to: 'users#reset_password'

  # post "/reset_password", 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
end
