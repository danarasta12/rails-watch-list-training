Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "lists#index"
  # resources :movies, only: %i[show index]
  resources :lists, only: %i[show index new create destroy] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
  resources :reviews, only: %i[destroy]
end
