class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_secure_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save

    redirect_to '/restaurants'
  end

  def review_secure_params
    params.require(:review).permit(:rating, :content)
  end
end
