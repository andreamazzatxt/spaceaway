class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.status = false
    redirect_to trip_path(@booking.trip) if @booking.save
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy

    redirect_to trip_path(@booking.trip)
  end

  private

  def booking_params
    params.require('booking').permit(:trip, :user)
  end
end
