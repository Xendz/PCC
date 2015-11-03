Rails.application.routes.draw do
  get 'target/new'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :target
end
