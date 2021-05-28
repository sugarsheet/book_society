Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/signup', to: 'pages#signup'
  resources :books, only: [:index, :show] do
    member do
      get :toggle_favorite
    end
    collection do
      get :recommended
    end
    resources :reviews, only: [:create, :new]
  end

  resources :favorites
end
