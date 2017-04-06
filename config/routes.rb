Rails.application.routes.draw do

  resources :products
  resources :users
  resources :sports

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
