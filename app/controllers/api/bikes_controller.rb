class Api::BikesController < ApplicationController
  def index
    bikes = Bike.all
    render json: bikes
  end

  def show
    bike = Bike.find(params[:id])
    render json: bike
  end
end
