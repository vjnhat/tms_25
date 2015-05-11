Rails.application.routes.draw do
  resources :users, only: [:index, :show] 

  resources :subjects, only: [:index, :show]

  namespace :supervisor do
    resources :users
    resources :subjects
    resources :courses
    root  'users#index'
  end

  root 'static_pages#home'
  get 'help' => 'static_pages#help'
end
