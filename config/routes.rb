Rails.application.routes.draw do
  get 'page/index'

  devise_for :users
  resources :users

  root to: "page#index"
end
