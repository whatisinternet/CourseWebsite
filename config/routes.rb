Rails.application.routes.draw do
  resources :assignments

  resources :course_details

  resources :announcements

  devise_for :users
  resources :users

  root to: "page#index"
end
