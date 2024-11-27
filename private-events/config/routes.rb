Rails.application.routes.draw do
  resources :events
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  resources :users, only: [:index, :show]
  resources :attendances, only: [:create, :destroy]

  get "home", to: "home#index"

  # Defines the root path route ("/")
  root "events#index"
end