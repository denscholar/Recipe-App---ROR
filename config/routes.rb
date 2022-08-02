Rails.application.routes.draw do
  resources :users, only: [:index] do
    resources :recipes, except: [:edit, :update] do
      resources :recipe_foods, only: [:new, :create, :destroy]
    end
    resources :foods, except: [:edit, :update]
  end

   # Defines the root path route ("/")
   root "users#index"
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
