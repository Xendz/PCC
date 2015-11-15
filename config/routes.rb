Rails.application.routes.draw do
 
  #get 'https://api.shodan.io/shodan/host/8.8.8.8?key=sHXhSewFy26XllFbsxvRuWyzWqRR7BaW' to: 'shodan#index'
resources :visitors
resources :shodan

#map
  resources :locations

#target
  resources :targets

#devise
  root to: 'visitors#index'
  
  devise_for :users
  resources :users
  
end
