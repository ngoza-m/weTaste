Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :restaurants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "profile", to: "pages#profile"
  get "wishlist", to: "pages#wishlist"

  get "search", to: "pages#city_search"

  resources :restaurants, only: [:new, :index, :show] do
    resources :recommendations, only: [:index, :create, :new]
    resources :wishlists, only: [:create, :destroy]
  end

  resources :recommendations, only: [:index, :edit, :update, :destroy] do
    resources :likes, only: [:create, :destroy]
  end

  resources :follows, only: [:create, :destroy]
  resources :wishlists, only: [:destroy]
end
# POST restaurants/:id/recommendations/:id/like
# POST /recommendations/:id/like
# POST /restaurants/:id/whishlist
