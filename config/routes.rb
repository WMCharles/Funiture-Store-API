Rails.application.routes.draw do
  resources :product_categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "products#index"
  resources :products, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :create, :update, :destroy]
end
