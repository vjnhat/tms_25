Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users, only: [:index, :show]
  resources :subjects, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resources :user_tasks, only: :update
  resources :user_subjects, only: :update

  namespace :supervisor do
    resources :users
    resources :courses
    resources :subjects do
      resources :tasks
    end
    root  'users#index'
  end
end
