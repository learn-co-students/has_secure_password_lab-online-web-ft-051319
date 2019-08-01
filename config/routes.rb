Rails.application.routes.draw do
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/new', to: 'users#new'
  post '/new', to: 'users#create'

  get '/show', to: 'users#show'

  post '/create', to: 'sessions#create'
end
