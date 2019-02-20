class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new

    @restaurant = Restaurant.new
  end

  def create
    # restaurant_params are what we pick up from the _form inputs, that are shown on new.html.erb
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
     redirect_to restaurant_path(@restaurant)
    else
      #if we haven't got a valid save to our db, we will render a new page.
      render :new
    end
  end

  private
# we require the 3 params that are sent from the form , in order to save them to @restaurant in create.
  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address)
  end
end
