class NeighborhoodsController < ApplicationController
  before_action :find_neighborhood, only: [:show]
  #remove for login
  skip_before_action :authenticate_request
  

  def index
    @neighborhoods = Neighborhood.all
    render json: @neighborhoods
  end

  def show
    render json: @neighborhood
  end

  def update
    @neighborhood.update(neighborhood_params)
    if @neighborhood.save
      render json: @neighborhood, status: :accepted
    else
      render json: { errors: @neighborhood.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def neighborhood_params
    params.permit(:id, :NBRHD_NAME)
  end

  def find_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end

end
