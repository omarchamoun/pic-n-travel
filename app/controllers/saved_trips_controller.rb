class SavedTripsController < ApplicationController
  def index
  end

  def create
  end


  def destroy
  end

  def my_saved_trips
    @my_saved_trips = current_user.saved_trips
  end
end
