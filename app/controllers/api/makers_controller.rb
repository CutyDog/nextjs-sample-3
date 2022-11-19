class Api::MakersController < ApplicationController
  def index
    makers = Maker.all
    render json: makers
  end

  def show
    maker = Maker.find(params[:id])
    render json: maker
  end
end
