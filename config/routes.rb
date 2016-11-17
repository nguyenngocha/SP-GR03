Rails.application.routes.draw do

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

	root				'static_pages#home'
  get'/' => 'static_pages#home'
  get 'help'	=>	'static_pages#help'
  get 'about'	=>	'static_pages#about'
  get 'signup'	=>	'users#new'
  get 'home' => 'static_pages#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
