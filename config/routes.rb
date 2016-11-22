Rails.application.routes.draw do


  get 'classifies/new'

  get 'classifies/create'

  get 'categories/new'

  get 'categories/create'

  get 'products/new'

  get 'products/create'

  get 'products/show'

  get 'products/index'

  get 'order_details/new'

  get 'order_details/create'

  get 'produces/new'

  get 'produces/create'

  get 'produces/update'

  get 'produces/show'

  get 'produces/destroy'

  get 'produces/index'

  get 'orders/new'

  get 'orders/create'

  get 'product/new'

  get 'product/create'

  get 'product/update'

  get 'product/show'

  get 'product/destroy'

  get 'product/index'

  get 'order_detail/new'

  get 'order_detail/create'

  get 'order/new'

  get 'order/create'



  root 'products#index'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end