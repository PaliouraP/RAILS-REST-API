Rails.application.routes.draw do

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  root to: "todos#index"

  resources :todos do
    resources :items
  end
end