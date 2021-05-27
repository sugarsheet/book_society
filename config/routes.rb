Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/signup', to: 'pages#signup'
  resources :books, only: [:index, :show] do
    collection do
      get :recommended
    end
    resources :reviews, only: [:create, :new]
  end

  resources :wishlists
end
