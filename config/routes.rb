Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users 
  resources :posts
  resources :categories, only: [:index,:show,:new,:create]
  resources :comments, only: [:create,:new,:edit,:update, :destroy]
end

