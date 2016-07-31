Rails.application.routes.draw do
  root "pages#index"
  get "/dashboard", to: "users#show", as: "dashboard"

  resources :users
  resources :posses

  get "/auth/github", as: "login"
  get '/auth/:provider/callback', to: 'sessions#create'
end
