Rails.application.routes.draw do
 
  #get '/targets/:id', to: 'targets#show'
  resources :targets

  root to: 'visitors#index'
  devise_for :users
  resources :users
  
end
