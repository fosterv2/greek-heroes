Rails.application.routes.draw do
  root 'users#home'
  get '/welcome', to: 'sessions#welcome'
  get '/about', to: 'sessions#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  post '/heroes/new/generate', to: 'heroes#generate', as: 'generate_hero'
  resources :battles, only: [:new, :create]
  resources :heroes
  resources :monsters
  resources :users
  resources :gods, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
