Rails.application.routes.draw do
  resources :sightings
  resources :expeditions
  resources :users
  resources :cryptids
  resources :sessions


   delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
   get "/sessions/new", to: 'sessions#new', as: 'new_login'
   post '/sessions/login', to: 'sessions#login', as: 'login'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
