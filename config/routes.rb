Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:create, :destroy]
  end
  resources :doses, only: [:new]
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

