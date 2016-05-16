Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: "images#index"

  resources :images

  resources :home, only: [:index]
end
