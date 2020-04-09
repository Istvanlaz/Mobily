Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


  root to: 'pages#home'

  # get 'products#index', as: :products
  # get 'newest_products', to: "pages#newest_products", as: 'newest_products'
  # get 'best_deals', to: "pages#best_deals", as: 'best_deals'
  # get 'newest_products/:id', to: "pages#new_show", as: 'product_new'
  # get 'best_deals/:id', to: "pages#deal_show", as: 'product_deal'

  get 'products/new', to: 'products#new', as: 'new_product'
  post 'newest_products', to: 'products#create', as: 'create_new_product'
  # resources :product_uploads, only: :new

  resources :categories, only: [:index, :show, :new, :edit, :destroy] do
    resources :sub_categories, only: [:index, :show, :new, :edit, :destroy]
    resources :products, only: [:index, :show, :create, :edit]
  end

  get 'best_deals/:category_id/products/:id', to: "best_deals#product_deal", as: 'product_deal'
  get 'best_deals/products/:id', to: "best_deals#deal_show", as: 'deal_show'
  get 'newest_products/:category_id/products/:id', to: "newest_products#product_show", as: 'product_show'
  get 'newest_products/products/:id', to: "newest_products#newest_show", as: 'newest_show'
  # get 'newest_products/new', to: "newest_products#new", as: 'sell_product'
  resources :best_deals, only: [:index, :show]
  resources :newest_products, only: [:index, :show]

  resources :shopingcarts, only: [:index, :show, :new, :edit, :destroy]
  resources :wishlists, only: [:index, :show, :new, :edit, :destroy]
  # resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
