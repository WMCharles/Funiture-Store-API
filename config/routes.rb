Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "products#index"
  resources :products, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :create, :update, :destroy]
  resources :product_categories, only: [:index, :show, :create, :update, :destroy]

  # Authentication
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
end
