class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.status = false
    redirect_to trip_path(@booking.trip) if @booking.save
  end

  private

  def booking_params
    params.require('booking').permit(:trip, :user)
  end
end
