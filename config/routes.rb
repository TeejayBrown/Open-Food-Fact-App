Rails.application.routes.draw do
  get 'manufacturing_countries/index'
  get 'manufacturing_countries/show'
  get 'products/index'
  get 'products/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [:index, :show]
  resources :manufacturing_countries, only: [:index, :show]
end
