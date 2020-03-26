Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :shopingcarts, only: [:index, :show, :new, :edit, :destroy]
  resources :wishlists, only: [:index, :show, :new, :edit, :destroy]
  resources :products, only: [:index, :show, :new, :create, :edit, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
