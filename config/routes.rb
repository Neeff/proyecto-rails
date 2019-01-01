Rails.application.routes.draw do
  get 'pay/pay'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'nosotros/nosotros'
  resources :salidas
  resources :vuelos
  resources :naves
  resources :empleados
  devise_for :users
  resources :order_items
  resource :carts , only: [:show]
  resources :products
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
end
