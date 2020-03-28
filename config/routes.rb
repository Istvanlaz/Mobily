Rails.application.routes.draw do
  # devise_scope :user do
  #   get "/sign_in" => "pages#home" # custom path to login/sign_in
  #   get "/sign_up" => "pages#home", as: "new_user_registration" # custom path to sign_up/registration
  # end

# , path: "", path_names: { sign_up: ""}
# controllers: {
#     sessions: 'users/sessions',
#     registrations: 'users/registrations'
#   # }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


  root to: 'pages#home'

  resources :shopingcarts, only: [:index, :show, :new, :edit, :destroy]
  resources :wishlists, only: [:index, :show, :new, :edit, :destroy]
  resources :products, only: [:index, :show, :new, :create, :edit, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
