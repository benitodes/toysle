class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @user = current_user
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = @user
    @booking.toy = @toy
    if @booking.save
      redirect_to dashboard_path
    else
      render 'toy/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
