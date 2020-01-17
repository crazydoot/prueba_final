Rails.application.routes.draw do
  get '/users/registrar/empleado', to: 'workers#new'
  get '/nueva_sucursal', to: "locations#new"
  get '/employees', to: 'sessions#home'
  get '/home', to: 'sessions#home'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :locations
  resources :workers

  root 'sessions#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
