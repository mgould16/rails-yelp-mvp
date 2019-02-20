class ReviewsController < ApplicationController

  def new
    # when creating a new review, we need to know what restaurant it refers to w/ Restaurant.find
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # when creating a new review, we need to know what restaurant it refers to w/ Restaurant.find
    @restaurant = Restaurant.find(params[:restaurant_id])
    # it needs to have the review params we set out in the review_params method below.
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
     redirect_to restaurant_path(@restaurant)
    else
      # if it deosn't save (such as all params not being sent through, it will render a new form page)
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
