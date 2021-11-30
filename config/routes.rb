Rails.application.routes.draw do
  get 'item_versions/index'
  get 'item_versions/show'
  get 'orders/index'
  get 'orders/show'
  get 'items/index'
  get 'items/show'
  resources :clients
  resources :items
  resources :itemversions
  resources :orders
end
