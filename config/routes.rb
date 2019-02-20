Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # # Read all tasks
  # get 'restaurants', to: 'restaurants#index'

  # # Read the details of one restaurant
  # get 'restaurant/:id', to: 'restaurants#show', as: "restaurant"

  #   # create a restaurant 2 REQUESTS
  # get 'restaurants/new', to: 'restaurants#new', as: "new"
  # post 'restaurants', to: "restaurants#create"

  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: "new_restaurant_review"
  # post 'reviews', to: "reviews#create"

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end


  # resources :reviews, only: [ :show, :edit, :update, :destroy ]

end
