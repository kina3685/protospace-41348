Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :prototypes, only: :index
end
  