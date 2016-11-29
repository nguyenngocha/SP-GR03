Rails.application.routes.draw do

  get 'filter_districts_by_province' => 'address_lists#filter_districts_by_province'
  get 'filter_wards_by_district' => 'address_lists#filter_wards_by_district'
  
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
  delete 'carts/destroy'
  put 'orders/update'
  post 'orders/new', to: 'orders#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:index]
  resources :products , only: [:index,:show]
  resources :address_lists, only: [:index, :new, :create, :edit, :destroy]
  resources :carts 
  resources :cartdetails
  resources :categories
  resources :orders
end