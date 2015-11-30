Rails.application.routes.draw do
 
  get 'index/new'

  get 'index/create'

  get 'index/destroy'

  get 'knowledge/index'

  get 'resumes/index'
  

  #get 'https://api.shodan.io/shodan/host/8.8.8.8?key=sHXhSewFy26XllFbsxvRuWyzWqRR7BaW' to: 'shodan#index'
resources :visitors
resources :shodan
resources :resumes, only: [:index, :new, :create, :destroy]
resources :nmap
#map
  resources :locations

#target
  resources :targets

#devise
  root to: 'visitors#index'
  
  devise_for :users
  resources :users
  
end
