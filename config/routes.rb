Rails.application.routes.draw do
  get "/signup", to: "users#new"

  post "/signup", to: "users#create"

  get "/home", to: "users#index"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

end