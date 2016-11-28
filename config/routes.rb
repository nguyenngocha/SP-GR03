Rails.application.routes.draw do



  get 'carts/show'

  get 'search/index'

  root 'products#index'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/carts', to: 'carts#show'
  delete  'cartdetails/destroy'
  put  'cartdetails/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :products , only: [:index,:show]
  resources :carts 
  resources :cartdetails
end