class BookingsController < ApplicationController
  def index
    @all_bookings = Booking.all
  end

  def create
  end

  def destroy
  end

  def my_bookings
    @my_bookings = current_user.bookings
  end

  private

  def booking_params
  end

  def set_trip
  end

  def set_booking
  end
end
