Rails.application.routes.draw do
  resources :courses

  get 'page/index'

  devise_for :users
  resources :users

  root to: "page#index"
end
