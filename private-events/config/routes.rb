Rails.application.routes.draw do
  resources :events
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  resources :users, only: [:index, :show]

  # Defines the root path route ("/")
  root "home#index"
end