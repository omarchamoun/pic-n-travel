class TripsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def my_trips
   @my_trips = current_user.trips
  end

  private

  def trip_params
  end

  def set_profile
  end

  def set_trip
  end

end
