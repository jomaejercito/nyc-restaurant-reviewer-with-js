class NeighborhoodsController < ApplicationController
  before_action :require_login

  def index
    @neighborhoods = Neighborhood.all
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @neighborhoods}
    end
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @neighborhood}
    end
  end

end
