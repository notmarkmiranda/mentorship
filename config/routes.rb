Rails.application.routes.draw do

  get 'mentors/index'

  root "pages#index"
  get "/how", to: "pages#show", as: :how
  get "/dashboard", to: "users#show", as: "dashboard"

  resources :users, except: [:new, :show]
  resources :students, only: [:index, :show, :new, :create, :edit]
  resources :mentors, only: [:index, :show, :new, :create]
  resources :posses

  get "/deactivate-student", to: "students#deactivate", as: "deactivate_student"
  get "/activate-student", to: "students#activate", as: "activate_student"
  get "/deactivate-mentor", to: "mentors#deactivate", as: "deactivate_mentor"
  get "/activate-mentor", to: "mentors#activate", as: "activate_mentor"
  get "/lets-go", to: "users#new", as: "lets_go"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/auth/github", as: "login"
  get "/auth/:provider/callback", to: "sessions#create"

end
