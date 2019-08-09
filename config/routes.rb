Rails.application.routes.draw do
  get 'reviews/create'
  # question is always: do i need a page(path) for this or not ?

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  get '/search', to: 'toys#search', as: 'search'

  resources :bookings, only: [:show, :destroy] do
    resources :reviews, only: [:create]
  end

  resources :toys do
    resources :bookings, only: [:create]
  end

end
