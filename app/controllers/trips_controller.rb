class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :show

  add_breadcrumb "Home", :root_path

  def index
    add_breadcrumb "#{current_user.first_name} Trips", trips_path
    # current_user = user who is logged in
    if current_user && current_user.is_captain
      @trips = Trip.where(captain: current_user)
    #   # @trips = Trip.where(captain_id: current_user.id).select do |t|
    #   #   t.bookings.count.positive?
    #   # end
    # elsif current_user && !current_user.is_captain
    #   @bookings = Booking.where(user: current_user)
    #   @trips = @bookings.map do |booking|
    #     booking.trip
    #   end
    else
      @trips = Trip.all
    end
  end

  def show
    authorize @trip
    add_breadcrumb "#{@trip.name}", trip_path(@trip)
    @review = Review.new()
    @new_booking = Booking.new # need for booking form :)
    @booking = false
    if @trip.bookings.size.positive?
      @trip.bookings.each do |booking|
        @booking = booking if booking.user == current_user
      end
    end

  end

  def new
    add_breadcrumb 'New Trip', new_trip_path
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
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :price, :departure_date, :arrival_date, :photo, :reviews)
  end

  def find_trip
    @trip = Trip.find(params[:id])
    authorize @trip # Florent: comment to add this here => Pundit
  end

  def find_spaceship
    id = params.require(:trip).permit(:spaceship)[:spaceship].to_i
    if id.zero?
      Spaceship.new()
    else
      Spaceship.find(id)
    end
  end

  def find_planet
    id = params.require(:trip).permit(:planet)[:planet].to_i
    if id.zero?
      Planet.new()
    else
      Planet.find(id)
    end
  end
end
