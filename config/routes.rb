Rails.application.routes.draw do
  mount SparkPlugs::Engine => '/page', as: 'spark_plugs'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :lectures
  resources :assignments
  resources :courses

  get '/assignment_list/:course', to: 'assignments#course_assignment', as: 'assignment_list'
  get '/lecture_list/:course', to: 'lectures#course_lecture', as: 'lecture_list'
  get 'page/index'

  devise_for :users
  resources :users

  root to: "page#index"
end
