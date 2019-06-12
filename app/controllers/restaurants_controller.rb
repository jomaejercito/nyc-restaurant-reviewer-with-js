class RestaurantsController < ApplicationController
  before_action :require_login

  def index
    @restaurants = Restaurant.order('name ASC')
    respond_to do |f|
      f.html
      f.json {render json: @restaurants}
    end
  end

  def show
    set_restaurant
    respond_to do |f|
      f.html
      f.json {render json: @restaurant}
    end
  end

  def highest_rated
    @restaurants = Restaurant.highest_rated
    respond_to do |f|
      f.html
      f.json {render json: @restaurants}
    end
  end

  def lowest_rated
    @restaurants = Restaurant.lowest_rated
  end

  def popular
    @restaurants = Restaurant.popular
    respond_to do |f|
      f.html
      f.json {render json: @restaurants}
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :cuisine_id, :neighborhood_id)
  end

end
