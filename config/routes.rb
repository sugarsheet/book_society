Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/signup', to: 'pages#signup'
  get '/search', to: 'pages#search'
  resources :books, only: [:index, :show] do
    member do
      get :toggle_favorite
    end
    collection do
      get :recommended
    end
    resources :reviews, only: [:create, :new]
  end
  resources :favorites, only: (:index)
  resources :books do
    resources :likes
  end
end
