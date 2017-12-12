class TripsController < ApplicationController
  def index
    @trips = Trips.all
  end

  def show
    @trip = Trips.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :price_experience, :date, :description, :category)
  end

  def set_profile
  end

  def set_trip
  end

end
