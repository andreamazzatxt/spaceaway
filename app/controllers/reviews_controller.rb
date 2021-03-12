class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy, :edit]
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.review_type = 'trip-review'
    authorize @review
    if @review.save
      redirect_to trip_path(@booking.trip), anchor: "review-#{@review.id}", notice: 'Review succesfully saved!'
    else
      render "trips/show"
    end
  end

  def edit
    @review.update(review_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to trip_path(@review.trip), notice: 'Review succesfully deleted!'
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
