Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  resources :users, only: [:index, :show]

  root "users#index"
end
