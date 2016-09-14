Rails.application.routes.draw do
  root :to => 'images#index'

  resources :users
  resources :images
end
