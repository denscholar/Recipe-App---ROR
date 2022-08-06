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

      resources :inventories, only: %i[index show new create destroy] do
      resources :inventory_foods, only: %i[index show new create destroy]
    end
    resources :foods, only: %i[index show new create destroy]
    # resources :users, only: %i[index show] do
      resources :recipes, only: %i[index show new create destroy] do
        resources :recipe_foods, only: %i[index show new create destroy]
      end
    # end  
  get	'/shopping_lists/:recipe_id&:inventory_id', to: 'shopping_lists#new', as: 'shopindex'
  resources :foods, only: %i[index show new create destroy]
end
