Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get '/authorized', to: 'sessions#login_required'
  get '/home', to: 'users#home'
  root :to =>'sessions#welcome'
  

  resources :users 
  resources :posts
  resources :categories, only: [:index,:show,:new,:create]
  resources :comments, only: [:create,:new,:edit,:update, :destroy]
  # resources :likes 

  post "/upvote", to: "likes#create"

end

