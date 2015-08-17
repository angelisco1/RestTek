Rails.application.routes.draw do
  
  devise_for :users
  get 'profile', to: 'users#profile'
  root to: 'users#profile'

  resources :roles do
    resources :users
  end

  resources :orders do
    resources :items
  end

  resources :categories do
    resources :items
  end
  
  resources :statuses
  resources :order_items
  resources :order_items_statuses

  match '/signup', to: 'users#new', via: 'get'

end
