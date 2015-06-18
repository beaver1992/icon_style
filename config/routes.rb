Rails.application.routes.draw do
  root 'store#index'
  resources :products
  resources :store, only: :show
end
