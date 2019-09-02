class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    render json: @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    render json: @restaurant
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    render json: @restaurant
  end
  private

    def restaurant_params
      params.require(:restaurant).permit(:r_name, :r_type, :r_description, :r_review, :rating, :likes)
    end
end
