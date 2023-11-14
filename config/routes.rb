Rails.application.routes.draw do
  root 'top#main'
  resources :products
  get 'top/main'
  resources :cartitems,only: [:new, :create, :destroy]
  resources :carts,only: [:show, :destroy]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
