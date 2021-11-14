Rails.application.routes.draw do
  resources :clients
  resources :items
  resources :itemversions
  resources :orders
end
