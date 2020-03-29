Rails.application.routes.draw do
  root to: "tasks#index"
  get "users", to: "tasks#index"
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
end
