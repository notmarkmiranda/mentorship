Rails.application.routes.draw do
  resources :users
  resources :posses

  get "/auth/github", as: "login"
  get '/auth/:provider/callback', to: 'sessions#create'
end
