Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :rides, only: [:index, :new, :create]
end
