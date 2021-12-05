Rails.application.routes.draw do
  namespace :admin do
    resources :items, except: [:destroy]
    resources :item_versions

    root to: "items#index"
  end

  root 'items#index' 

  resources :items, only: [:index, :show]
  resources :item_versions, only: [:show]

  resources :clients, only: [:index, :show] do
    resources :orders, only: [:index, :show, :new, :create]
  end
end
