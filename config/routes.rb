Rails.application.routes.draw do  
  devise_for :users 
  
  root "pages#index"
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]

  resources :inventories, only: %i[index show new create destroy] do
    resources :inventory_foods, only: %i[index show new create destroy]
  end
  resources :foods, only: %i[index show new create destroy]
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipe_foods, only: %i[new create]
  end
  resources :shopping_lists, only: %i[index]
  get	'/shopping_lists/:recipe_id&:inventory_id', to: 'shopping_lists#new', as: 'shopnew'  
   
end
