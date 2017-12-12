Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:edit, :update, :destroy]
  resources :trips do
    resources :bookings, only: [:index, :create, :destroy]
    resources :saved_trips, only: [:index, :create, :destroy]
  end


  get "profile", to: "users#profile"
  get "stats", to: "users#stats"
end
