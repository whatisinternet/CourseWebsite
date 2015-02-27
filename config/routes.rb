Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :lectures

  resources :courses

  get 'page/index'

  devise_for :users
  resources :users

  root to: "page#index"
end
