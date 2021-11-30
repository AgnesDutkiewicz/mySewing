Rails.application.routes.draw do
  root 'items#index' 

  get 'orders/index'
  get 'orders/show'
  get 'items/index'
  get 'items/show'
  get 'clients/index'
  get 'clients/show'
  resources :clients
  resources :items
  resources :item_versions
  resources :orders
end
