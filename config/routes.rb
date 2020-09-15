Rails.application.routes.draw do

  resources :orders
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'pages#home'

  get 'products/edit/:id', to: 'products#edit', as: 'edit_product'
  get 'products/new', to: 'products#new', as: 'new_product'
  post 'products', to: 'products#create', as: 'create_new_product'
  patch 'products/edit/:id', to: 'products#update', as: 'update_product'
  delete 'products/destroy/:id', to: 'products#destroy', as: 'delete_product'

  post 'products/:id/savings', to: 'savings#create', as: 'create_new_saving'
  delete 'wishlists/:wishlist_id/savings/destroy/:id', to: 'savings#destroy', as: 'delete_saving'

  resources :products do
    get :who_bought, on: :member
  end

  resources :categories, only: [:index, :show, :new, :edit, :destroy] do
    resources :sub_categories, only: [:index, :show, :new, :edit, :destroy]
    resources :products, only: [:index, :show, :destroy]
  end

  get 'best_deals/products/:id', to: "best_deals#deal_show", as: 'deal_show'
  get 'best_deals/:category_id/products/:id', to: "best_deals#product_deal", as: 'product_deal'
  get 'best_deals/:category_id/sub_categories/:id', to: "best_deals#deal_sub_category", as: 'deal_sub_category'
  get 'best_deals/:category_id/sub_categories/:sub_category_id/products/:id', to: "best_deals#deal_sub_category_show", as: 'deal_sub_category_show'
  get 'best_deals/get_lucky', to: "best_deals#get_lucky", as: 'get_lucky'

  get 'newest_products/products/:id', to: "newest_products#newest_show", as: 'newest_show'
  get 'newest_products/:category_id/products/:id', to: "newest_products#product_show", as: 'product_show'
  get 'newest_products/:category_id/sub_categories/:id', to: "newest_products#newest_sub_category", as: 'newest_sub_category'
  get 'newest_products/:category_id/sub_categories/:sub_category_id/products/:id', to: "newest_products#newest_sub_category_show", as: 'newest_sub_category_show'

  resources :best_deals, only: [:index, :show, :destroy]
  resources :newest_products, only: [:index, :show, :destroy]

  resources :shopingcarts, only: [:index, :show, :new, :edit, :destroy]
  resources :wishlists, only: [:index, :show, :new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
