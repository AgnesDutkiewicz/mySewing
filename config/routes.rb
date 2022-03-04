Rails.application.routes.draw do
  namespace :admin do
    resources :items
    resources :item_versions
    resources :fabrics
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

  resources :fabrics, only: [:index, :show]

  namespace :api do
    resources :categories, only: nil do
      resources :items, only: [:index], module: :categories
    end

    resources :types, only: nil do
      resources :fabrics, only: [:index], module: :types
    end

    resources :clients, only: [:index]
    resources :categories
    get 'items/:id' => 'items#index'
    resources :items, only: [:index] do
      resources :versions, controller: 'item_versions', only: [:index]
    end
  end
end
