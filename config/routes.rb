Rails.application.routes.draw do
  devise_for :users

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  
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
  resources :favorites, only: (:index)
  resources :books do
    resources :likes
  end
end
