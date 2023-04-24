Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tags
  resources :categories
  resources :posts
  devise_for :users

  # Defines the root path route ("/")
  get 'home/index'
  root "home#index"
end
