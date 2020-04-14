Rails.application.routes.draw do
  resources :battles
  resources :heros
  resources :monsters
  resources :users
  resources :gods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
