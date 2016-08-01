Rails.application.routes.draw do

  get 'mentors/index'

  root "pages#index"
  get "/how", to: "pages#show", as: :how
  get "/dashboard", to: "users#show", as: "dashboard"

  resources :users, except: [:new, :show]
  resources :mentors, only: [:index]
  resources :posses

  get "/lets-go", to: "users#new", as: "lets_go"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/auth/github", as: "login"
  get "/auth/:provider/callback", to: "sessions#create"

end
