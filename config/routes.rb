Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :images

  root :to => 'images#index'
  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
