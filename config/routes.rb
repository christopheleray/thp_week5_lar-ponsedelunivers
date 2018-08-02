Rails.application.routes.draw do
  root to: 'static_pages#home', as: 'home'
  get '/secret_page', to: 'static_pages#secret_page', as: 'secret_page'
  resources :users
end
