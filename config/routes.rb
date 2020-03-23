Rails.application.routes.draw do
  get 'shopingcarts/index'
  get 'shopingcarts/show'
  get 'shopingcarts/new'
  get 'shopingcarts/edit'
  get 'shopingcarts/destroy'
  get 'wishlists/index'
  get 'wishlists/show'
  get 'wishlists/new'
  get 'wishlists/edit'
  get 'wishlists/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  get 'products/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
