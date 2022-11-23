class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(params[:restaurant_id] == @restaurant.id)

  end

  def create
    @restaurant = Restaurant.new(secure_params)
    @restaurant.save

    redirect_to restaurants_path
  end

  private

  def secure_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
