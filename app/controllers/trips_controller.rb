class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :set_profile, only: [:create, :edit, :update, :destroy]
  def index
    raise
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.profile = @profile

    if @trip.save
      redirect_to trip_path(@trip)
    end
  end

  def edit
    unless @trip.profile == @profile
      redirect_to trips_path
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :price_experience, :date, :description, :category)
  end

  def set_profile
    @profile = current_profile
  end

  def set_trip
    @trip = Trips.find(params[:id])
  end

end
