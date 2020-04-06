Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


  root to: 'pages#home'

  resources :categories, only: [:index, :show, :new, :edit, :destroy] do
    resources :sub_categories, only: [:index, :show, :new, :edit, :destroy]
  end
  resources :shopingcarts, only: [:index, :show, :new, :edit, :destroy]
  resources :wishlists, only: [:index, :show, :new, :edit, :destroy]
  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
