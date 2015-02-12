Rails.application.routes.draw do
  resources :lectures

  resources :courses

  get 'page/index'

  devise_for :users
  resources :users

  root to: "page#index"
end
