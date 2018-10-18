Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  resources :posts
  resources :users, only: [:show, :index]
end
