Rails.application.routes.draw do

  root to: "images#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :images do
    resources :endorsements, only: [:index, :create]
    resources :comments, only: [:new, :create, :index, :destroy]
  end

  resources :home, only: [:index]
end
