class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.review_type = 'trip-review'
    authorize @review
    if @review.save
      redirect_to trip_path(@booking.trip), notice: 'Review succesfull saved'
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
