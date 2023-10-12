Rails.application.routes.draw do
  root 'static_pages#top'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'
  resources :users, only: %i[new create]
end
