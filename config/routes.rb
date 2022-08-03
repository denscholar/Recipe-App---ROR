Rails.application.routes.draw do  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root "pages#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :users, only: [:index, :show] do
    resources :recipes, only: [:index, :show, :new, :create]
      resources :recipe_foods, only: [:new, :create, :destroy]
  end
end
