Rails.application.routes.draw do
  root 'users#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  resources :battles, only: [:new, :create]
  resources :heros
  resources :monsters
  resources :users
  resources :gods, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
