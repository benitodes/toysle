Rails.application.routes.draw do
  # question is always: do i need a page for this or not ?

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :bookings, only: [:show] do
    resources :reviews, only: [:create]
  end

  resources :toys do
    resources :bookings, only: [:create, :destroy]
  end

end
