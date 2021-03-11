class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :show

  def index
    # current_user = user who is logged in
    if current_user && current_user.is_captain
      @trips = Trip.where(captain_id: current_user.id).select do |t|
        t.bookings.count.positive?
      end
    elsif current_user && !current_user.is_captain
      @bookings = Booking.where(user: current_user)
      @trips = @bookings.map do |booking|
        booking.trip
      end
    else @trips = Trip.all
    end
  end

  def show
    authorize @trip
    @new_booking = Booking.new # need for booking form :)
    @booking = false
    if @trip.bookings.size.positive?
      @trip.bookings.each do |booking|
        @booking = booking if booking.user == current_user
      end
    end
  end

  def new
    @trip = Trip.new
    authorize @trip
  end

  def create
    @trip = Trip.new(trip_params)
    authorize @trip
    @trip.planet = find_planet
    @trip.spaceship = find_spaceship
    @trip.captain = current_user
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
    params.require(:trip).permit(:name, :price, :departure_date, :arrival_date, :photo, :reviews)
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
