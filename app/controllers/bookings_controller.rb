class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @booking.trip = Trip.find(params[:trip_id])
    @booking.user = current_user
    @booking.status = false
    authorize @booking
    redirect_to trip_path(@booking.trip), notice: "Pending approval of Captain #{@booking.trip.captain.full_name}" if @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy

    redirect_to trip_path(@booking.trip), notice: "Your trip to #{@booking.trip.planet.name} is CANCELLED, #{view_context.link_to 'Look for all trips!', root_path}"
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

end
