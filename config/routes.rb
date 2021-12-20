Rails.application.routes.draw do
  namespace :admin do
    resources :items
    resources :item_versions
    resources :clients, except: [:destroy]
    resources :orders, except: [:destroy]

    root to: 'items#index'
  end

  root 'items#index'

  resources :items, only: [:index] do
    resources :item_versions, only: [:index]
  end
  resources :item_versions, only: [:show]

  resources :clients, only: [:index, :show] do
    resources :orders, only: [:index, :new, :create]
  end

  namespace :api do
    resources :clients, only: [:index]
    resources :items, only: [:index] do
      resources :versions, controller: 'item_versions', only: [:index]
    end
  end
end
