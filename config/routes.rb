Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :profiles, only: [:update, :destroy]
  resources :trips do
    resources :bookings, only: [:index, :create, :destroy]
    resources :saved_trips, only: [:index, :create, :destroy]
  end


  get 'profile/edit', to: "profiles#edit"
  get "profile", to: "profiles#show"
  get "stats", to: "profiles#stats"
  get "my_bookings", to: "bookings#my_bookings"
  get "my_trips", to: "trips#my_trips"
  get "my_saved_trips", to: "saved_trips#my_saved_trips"
end
