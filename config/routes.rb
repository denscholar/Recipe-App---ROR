Rails.application.routes.draw do
  get 'inventory/index'
  get 'inventory/show'
  get 'inventory/new'
  get 'inventory/create'
  get 'inventory/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
