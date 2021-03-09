class TripsController < ApplicationController
     before_action :find_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
  end

  def show
    # @doses = @cocktail.doses
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)

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
    @trip = trip.find(params[:id])
  end
end