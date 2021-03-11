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


  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: true)
    redirect_to trips_path
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: false)
    redirect_to trips_path
  end
  # this is for the show page 
  def approve
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: true)
    redirect_to trip_path(@booking.trip)
  end
end
