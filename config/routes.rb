Rails.application.routes.draw do
  
  devise_for :users
  get 'profile', to: 'users#profile'
  root to: 'users#profile'

  resources :roles

  # resources :roles do
  #   resources :users
  # end
  
  resources :orders do
    resources :order_items
  end

  # resources :orders do
  #   resources :items
  # end

  resources :categories

  # resources :categories do
  #   resources :items
  # end
  
  resources :users
  resources :items
  resources :statuses
  resources :order_item_statuses

  # resources :permissions
  resources :authorizations
  
  resources :assignments
  

  match '/signup', to: 'users#new', via: 'get'

end
