Rails.application.routes.draw do  
  devise_for :users 
  
  # controllers: {
  #   sessions: 'users/sessions',
  #   passwords: 'users/passwords',
  #   registrations: 'users/registrations'
  # }
  root "pages#index"
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]
  resources :users, only: [:index, :show] do
    resources :recipes, only: [:index, :show, :new, :create]
      resources :recipe_foods, only: [:new, :create, :destroy]
  end
  resources :inventories, only: %i[index show new create destroy] do
      resources :inventory_foods, only: %i[index show new create destroy]
    end
    resources :shopping_lists, only: [:index, :new, :create] do
      resources :inventories, only: %i[index show new create destroy] 
    end   
  get	'/shopping_lists/:recipe_id&:inventory_id', to: 'shopping_lists#new', as: 'shopindex'
  resources :foods, only: %i[index show new create destroy]
end
