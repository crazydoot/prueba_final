Rails.application.routes.draw do
  get '/nueva_sucursal', to: "locations#new"
  get '/home', to: 'sessions#home'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :locations

  root 'sessions#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
