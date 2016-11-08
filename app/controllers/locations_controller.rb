class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    render json: @location
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    @location = Location.find(params[:id])

    if @location.update(location_params)
      head :no_content
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy

    head :no_content
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:address)
  end
end
