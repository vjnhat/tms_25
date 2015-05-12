Rails.application.routes.draw do
  root 'static_pages#home'
  get 'help' => 'static_pages#help'

  resources :users, only: [:index, :show]

  namespace :supervisor do
    root 'users#index'
    resources :users
  end
end
