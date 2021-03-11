class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @booking.trip = Trip.find(params[:trip_id])
    @booking.user = current_user
    @booking.status = false
    authorize @booking
    redirect_to trip_path(@booking.trip) if @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy

    redirect_to trip_path(@booking.trip)
  end

  def approve
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: true)

    redirect_to trip_path(@booking.trip)
  end
end
