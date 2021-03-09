class ReviewsController < ApplicationController
  def create
    @trip = trip.find(params[:trip_id])
    @review = Review.new(review_params)
    @review.trip = @trip
    if @review.save
      redirect_to trip_path(@trip)
    else
      render "trips/show"
    end
  end

  def edit
    @review.update(review_params)

    redirect_to trip_path(@trip)
  end

  def destroy
    @review.destroy
    redirect_to trip_path
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end


