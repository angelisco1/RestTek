Rails.application.routes.draw do
  
  devise_for :users
  get 'profile', to: 'users#profile'
  root to: 'users#profile'

  resources :roles

  # resources :roles do
  #   resources :users
  # end
  
  # resources :orders do
  #   resources :order_items
  # end

  # resources :orders do
  #   resources :items
  # end

  resources :categories

  # resources :categories do
  #   resources :items
  # end
  
  resources :users
  resources :items

  get '/items_filtered_by/:category' => 'items#items_filtered_by', as: 'items_filtered'
  get '/orders_filtered_by/:user' => 'orders#orders_filtered_by', as: 'orders_filtered'

  get '/send_to_kitchen/:order' => 'orders#send_to_kitchen', as: 'send_to_kitchen'
  

  resources :orders
  resources :order_items

  resources :statuses
  resources :order_item_statuses

  # resources :permissions
  resources :authorizations
  
  resources :assignments
  

  match '/signup', to: 'users#new', via: 'get'

end
