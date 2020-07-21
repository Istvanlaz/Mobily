Rails.application.routes.draw do

  resources :orders
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # if user_signed_in?
  #   root to: 'newest_products#index'
  # else
    root to: 'pages#home'
  # end

  # get 'products#index', as: :products
  # get 'newest_products', to: "pages#newest_products", as: 'newest_products'
  # get 'best_deals', to: "pages#best_deals", as: 'best_deals'
  # get 'newest_products/:id', to: "pages#new_show", as: 'product_new'
  # get 'best_deals/:id', to: "pages#deal_show", as: 'product_deal'

  get 'products/edit/:id', to: 'products#edit', as: 'edit_product'
  get 'products/new', to: 'products#new', as: 'new_product'
  post 'products', to: 'products#create', as: 'create_new_product'
  # post 'products', to: 'products#update', as: 'update_product'
  patch 'products/edit/:id', to: 'products#update', as: 'update_product'
  delete 'products/destroy/:id', to: 'products#destroy', as: 'delete_product'

  resources :categories, only: [:index, :show, :new, :edit, :destroy] do
    resources :sub_categories, only: [:index, :show, :new, :edit, :destroy]
    resources :products, only: [:index, :show, :destroy]
  end

  get 'best_deals/products/:id', to: "best_deals#deal_show", as: 'deal_show'
  get 'best_deals/:category_id/products/:id', to: "best_deals#product_deal", as: 'product_deal'
  get 'best_deals/:category_id/sub_categories/:id', to: "best_deals#deal_sub_category", as: 'deal_sub_category'
  get 'best_deals/:category_id/sub_categories/:sub_category_id/products/:id', to: "best_deals#deal_sub_category_show", as: 'deal_sub_category_show'

  get 'newest_products/products/:id', to: "newest_products#newest_show", as: 'newest_show'
  get 'newest_products/:category_id/products/:id', to: "newest_products#product_show", as: 'product_show'
  get 'newest_products/:category_id/sub_categories/:id', to: "newest_products#newest_sub_category", as: 'newest_sub_category'
  get 'newest_products/:category_id/sub_categories/:sub_category_id/products/:id', to: "newest_products#newest_sub_category_show", as: 'newest_sub_category_show'

  resources :best_deals, only: [:index, :show, :destroy]
  resources :newest_products, only: [:index, :show, :destroy]

  resources :shopingcarts, only: [:index, :show, :new, :edit, :destroy]
  # resources :wishlists, only: [:index, :show, :new, :edit, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
