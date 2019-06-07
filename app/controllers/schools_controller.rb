class SchoolsController < ApplicationController
  before_action :find_school, only: [:show]

  def index
    @schools = School.all
    render json: @schools
  end

  def show
    render json: @school
  end

  def update
    @school.update(school_params)
    if @school.save
      render json: @school, status: :accepted
    else
      render json: { errors: @school.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def school_params
    params.permit(:id, :name, :level, :url, :latitude, :longitude, :current_rank, :last_year_rank)
  end

  def find_school
    @school = School.find(params[:id])
  end

end
