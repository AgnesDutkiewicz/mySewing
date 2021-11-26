Rails.application.routes.draw do
  get 'item_versions/index'
  get 'item_versions/show'
  get 'iten_versions/index'
  get 'iten_versions/show'
  get 'orders/index'
  get 'orders/show'
  get 'order/index'
  get 'order/show'
  resources :clients
  resources :items
  resources :itemversions
  resources :orders
end
