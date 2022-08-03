Rails.application.routes.draw do  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  root "pages#index"

  # resources :users, only: %i[index show] do
    resources :inventories, only: %i[index show new create destroy] do
      resources :inventory_foods, only: %i[index show new create destroy]
    end
    resources :foods, only: %i[index show new create destroy]
  # end
end
