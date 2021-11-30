Rails.application.routes.draw do
  root 'items#index' 

  resources :items, only: [:index, :show]
  resources :item_versions, only: [:show]

  resources :clients, only: [:index, :show] do
    resources :orders, only: [:index, :show]
  end
end
