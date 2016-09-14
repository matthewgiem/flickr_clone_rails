Rails.application.routes.draw do
  root :to => 'images#index'

  resources :sessions
  resources :users
  resources :images
end
