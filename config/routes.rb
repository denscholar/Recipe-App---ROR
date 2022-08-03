Rails.application.routes.draw do  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root "pages#index"

  # resources :users, only: %i[index show] do
    resources :inventories, only: %i[index show new create destroy] do
      resources :inventory_foods, only: %i[index show new create destroy] do 
        resources :foods, only: %i[index show new create destroy]
      end
    end
  # end
end
