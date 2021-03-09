class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.status = false    @booking.create('')
  end

  private

  def booking_params
    params.require('booking').permit(:trip, :user)
  end
end
