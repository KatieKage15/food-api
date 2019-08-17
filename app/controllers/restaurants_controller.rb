class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:r_name, :r_type, :r_description, :r_review)
    end
end
