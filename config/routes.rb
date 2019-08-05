Rails.application.routes.draw do

#  get 'sessions/new'
  resources :sessions, only: [:new, :create]


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root '/users'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # get '/show' => 'secrets#show'

  resources :users
  # resources :sessions, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
