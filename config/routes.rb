Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :trips, only: [:new, :create, :edit, :update, :destroy]

  resources :trips do
    resources :bookings, only: :create
  end

  # reviews are part of booking not of trips
  resources :bookings, only: :destroy do
    resources :reviews, only: [:create, :edit]
  end

  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end




