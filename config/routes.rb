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

  get '/items_filtered_by_category/:category' => 'items#items_filtered_by_category', as: 'items_filtered_by_category'
  get '/orders_filtered_by_user/:user' => 'orders#orders_filtered_by_user', as: 'orders_filtered_by_user'
  get '/order_items_filtered_by_status/:status' => 'order_items#order_items_filtered_by_status', as: 'order_items_filtered_by_status'

  get '/send_to_kitchen/:order' => 'orders#send_to_kitchen', as: 'send_to_kitchen'
  get '/assign_me_an_order/:id' => 'orders#assign_me_an_order', as: 'assign_me_an_order'

  post '/change_status/:id' => 'order_item_statuses#change_status', as: 'change_status'
  

  resources :orders
  resources :order_items

  resources :statuses
  resources :order_item_statuses

  # resources :permissions
  resources :authorizations
  
  resources :assignments
  

  match '/signup', to: 'users#new', via: 'get'

end
