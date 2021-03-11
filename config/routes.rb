Rails.application.routes.draw do
  root to: 'pages#home'
   devise_for :users

  resources :trips, only: [:new, :create, :edit, :update, :destroy]

  resources :trips do
    resources :bookings, only: :create
  end

  # reviews are part of booking not of trips
  resources :bookings, only: :destroy do
    member do
      patch :accept
      patch :decline
    end
    resources :reviews, only: [:create, :edit]
  end

  get '/approve/:id', to: "bookings#approve", as: 'approve'
  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end




