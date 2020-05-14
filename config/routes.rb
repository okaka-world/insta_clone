Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "user_sessions#new"
  resources :users
  resources :user_sessions, only: %i[create]
  
  get "login", to: "user_sessions#new", as: :login
  delete "logout", to: "user_sessions#destroy", as: :logout
end
