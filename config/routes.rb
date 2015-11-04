Rails.application.routes.draw do
 
#map
  resources :locations

#target
  resources :targets

#devise
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
end
