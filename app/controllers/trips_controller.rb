class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :show

  def index
    @trips = Trip.all
  end

  def show
    authorize @trip
    @new_booking = Booking.new # need for booking form :)
    @booked_by_user = false
    if @trip.bookings.size.positive?
      @trip.bookings.each do |booking|
        @booked_by_user = true if booking.user == current_user
      end
    end
  end

  def new
    @trip = Trip.new
    authorize @trip
    @planets = Planet.all
    @spaceships = Spaceship.all
  end

  def create
    @trip = Trip.new(trip_params)
    authorize @trip
    @trip.planet = find_planet
    @trip.spaceship = find_spaceship
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
    params.require(:trip).permit(:name, :price, :departure_date, :arrival_date, :passengers, :reviews  )
  end

  def find_trip
    @trip = Trip.find(params[:id])
    authorize @trip # Florent: comment to add this here => Pundit
  end

  def find_spaceship
    id = params.require(:trip).permit(:spaceship)[:spaceship].to_i
    Spaceship.find(id)
  end

  def find_planet
    id = params.require(:trip).permit(:planet)[:planet].to_i
    Planet.find(id)
  end
end
