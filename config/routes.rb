Rails.application.routes.draw do
  root to: 'home#top'
  get '/home/top', to: 'home#top'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users

  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
