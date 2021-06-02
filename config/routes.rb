Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/events", to: "events#index"
 
  root to: "events#index"
  resources :users, only: [:index, :show]
end
