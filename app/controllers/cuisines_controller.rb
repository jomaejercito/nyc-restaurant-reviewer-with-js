class CuisinesController < ApplicationController
  before_action :require_login

  def index
    @cuisines = Cuisine.order('name ASC')
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @cuisines}
    end
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @cuisine}
    end
  end

end
