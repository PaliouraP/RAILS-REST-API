Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  root to: "todos#index"

  resources :todos do
    resources :items
  end
end