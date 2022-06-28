Rails.application.routes.draw do
  get '/home/top', to: 'home#top'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root to: 'home#top'
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
