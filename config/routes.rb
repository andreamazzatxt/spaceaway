Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/destroy'
  root to: 'pages#home'

  resources :trips do
    resources :reviews, only: [:create, :edit, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end




