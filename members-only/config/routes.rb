Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index]  # Nested route for user's posts
  end

  resources :posts # Standalone route for all posts

  get 'users_with_posts', to: 'users#display_users', as: 'users_with_posts'

  root "users#index"
end
