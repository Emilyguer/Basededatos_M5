Rails.application.routes.draw do
  resources :documentary_films, only: [:index, :new, :create]
  resources :series, only: [:index, :new, :create]
  resources :movies, only: [:index, :new, :create]

  # Define the root path route ("/")
  root to: "movies#index"
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   

