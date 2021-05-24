Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books, only: [:index, :show] do
    collection do
      get :recommended
    end
  end
  resources :reviews, only: [:create]
  resources :wishlists
end
