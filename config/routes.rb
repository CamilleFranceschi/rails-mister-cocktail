Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:new, :destroy]
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
