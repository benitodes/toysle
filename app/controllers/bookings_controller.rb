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
    # example: "2019-08-12 to 2019-08-24", returned from simple form as a string
    # We have to split that into an array
    booking_dates = params[:booking][:start_date].split(" to ")
    # assign elements of array to start_date and end_date of @booking
    @booking.start_date = Date.parse(booking_dates[0])
    @booking.end_date = Date.parse(booking_dates[1])
    # calculate total days
    total_days = (@booking.end_date - @booking.start_date).to_i
    # calculate the total price
    @booking.total_price = total_days * @toy.daily_price
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

  def is_available?

  end

end
