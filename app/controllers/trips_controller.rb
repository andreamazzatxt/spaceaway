class TripsController < ApplicationController
     before_action :find_trip, only: [:show, :edit, :update, :destroy]
     skip_before_action :authenticate_user!, only: :show
  def index
    @trips = Trip.all
  end

  def show
    authorize @trip
    @new_booking = Booking.new # need for booking form :)
    @booking = Booking.where(user: current_user) #need for booking_form
  end

  def new
    @trip = Trip.new
    authorize @trip
  end

  def create
    @trip = Trip.new(trip_params)
    authorize @trip

    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def edit; end

  def update #patch request
    @trip.update(trip_params)

    redirect_to root_path(@trip.id)
  end

  def destroy
    @trip.destroy
    redirect_to :root
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :spaceship_id, :planet_id , :price, :departure_date, :arrival_date, :passengers, :reviews  )
  end

  def find_trip
    @trip = Trip.find(params[:id])
    authorize @trip # Florence: comment to add this here => Pundit
  end
end
