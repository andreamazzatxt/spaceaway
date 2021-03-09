class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @booking.trip = Trip.find(params[:trip_id])
    @booking.user = current_user
    @booking.status = true
    authorize @booking
    redirect_to trip_path(@booking.trip) if @booking.save
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy

    redirect_to trip_path(@booking.trip)
  end


end
