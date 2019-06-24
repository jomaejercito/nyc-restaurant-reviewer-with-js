class NeighborhoodsController < ApplicationController
  before_action :require_login

  def index
    @neighborhoods = Neighborhood.all
    respond_to do |f|
      f.html
      f.json {render json: @neighborhoods}
    end
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

end
