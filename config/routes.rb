Rails.application.routes.draw do
  # the following code that is commented out is not required as we are using resources.
  # resources is part of rub that means we aren't calling get, posts or patch etc
  # # Read all tasks
  # get 'restaurants', to: 'restaurants#index'

  # # Read the details of one restaurant
  # get 'restaurant/:id', to: 'restaurants#show', as: "restaurant"

  #   # create a restaurant 2 REQUESTS
  # get 'restaurants/new', to: 'restaurants#new', as: "new"
  # post 'restaurants', to: "restaurants#create"

  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: "new_restaurant_review"
  # post 'reviews', to: "reviews#create"

  # this is nested resources. as reviews will be shown on a restaurants' page w/ capabilities of
  # only adding a new review,  we have only 2 optinos: new and create.
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

end
