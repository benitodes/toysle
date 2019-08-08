class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to dashboard_path
    else
      flash[:alert] = "#{@review.errors.full_messages}"
      redirect_to dashboard_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
