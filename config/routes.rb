Rails.application.routes.draw do

  get 'users/new'
  post 'users/create'
  post 'sessions/create'
  get '/welcome' => 'welcome#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
