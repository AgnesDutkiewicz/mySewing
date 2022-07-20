Rails.application.routes.draw do
  namespace :admin do
    resources :items
    resources :item_versions
    resources :fabrics
    resources :clients, except: [:destroy]
    resources :orders, except: [:destroy]

    root to: 'items#index'
  end

  namespace :api do
    # Project Tailor After Hours resources
    resources :categories, only: nil do
      resources :items, only: [:index], module: :categories
    end

    resources :types, only: nil do
      resources :fabrics, only: [:index], module: :types
    end

    resources :items, only: [:index, :show] do
      resources :versions, controller: 'item_versions', only: [:index]
    end

    resources :categories
    resources :fabrics

    # other resources
    resources :clients, only: [:index]
  end

  resources :items, only: [:index] do
    resources :item_versions, only: [:index]
  end

  resources :item_versions, only: [:show]

  resources :clients, only: [:index, :show] do
    resources :orders, only: [:index, :new, :create]
  end

  resources :fabrics, only: [:index, :show]
end
