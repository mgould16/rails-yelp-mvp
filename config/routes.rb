Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all tasks
  get 'restaurants', to: 'restaurants#index'

  # Read the details of one restaurant
  get 'restaurant/:id', to: 'restaurants#show', as: "restaurant"

    # create a restaurant 2 REQUESTS
  get 'restaurants/new', to: 'restaurants#new', as: "new"
  post 'restaurants', to: "restaurants#create"

  # update a restaurant
  get 'restaurant/:id/edit', to: 'restaurants#edit', as: "edit"
  patch 'restaurant/:id', to: 'restaurants#update'

end
