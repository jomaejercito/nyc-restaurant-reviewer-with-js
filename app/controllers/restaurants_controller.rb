class RestaurantsController < ApplicationController
  before_action :require_login

  def index
    @restaurants = Restaurant.order('name ASC')
  end

  def show
    set_restaurant
  end

  def highest_rated
    @restaurants = Restaurant.highest_rated
  end

  def lowest_rated
    @restaurants = Restaurant.lowest_rated
  end

  def popular
    @restaurants = Restaurant.popular
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :cuisine_id, :neighborhood_id)
  end

end
