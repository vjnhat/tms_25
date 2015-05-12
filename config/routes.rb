Rails.application.routes.draw do

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'

  resources :users, only: [:index, :show] 

  resources :subjects, only: [:index, :show]

  namespace :supervisor do
    resources :users
    resources :subjects
    root  'users#index'
  end

end
