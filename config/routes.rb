Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'static_pages#home', as: 'home'
  get '/secret_page', to: 'static_pages#secret_page', as: 'secret_page'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
