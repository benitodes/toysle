class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @toys = Toy.geocoded
    # display all the toys which have a valid adress
    # display all the toys near the address enter by the user
    if params[:toy_address].present?
      @toys = @toys.near(params[:toy_address], 50)
      redirect_to root_path if @toys.empty?
      flash[:alert] = "No toys thereeeeeee"
    end
    display_markers unless @toys.empty?

    # raise
    # FILTER
    if params.has_key?(:slider) || params.has_key?(:id)
      # fetch min age from age slider
      min_age_input = params[:slider][:age_input].to_i
      # fetch min and max price from price slider
      min_price_input = params[:slider][:price_input].split(',')[0].to_i
      max_price_input = params[:slider][:price_input].split(',')[1].to_i

      # only show toys that match filter
      @toys = @toys.select { |t| t.min_age >= min_age_input && t.daily_price > min_price_input && t.daily_price < max_price_input }
      # raise
      respond_to do |format|
        format.html { redirect_to toys_path }
        format.js
      end
    end
  end

  def search
    @toy = Toy.new
    authorize @toy
  end

  def show
    authorize @toy
    @markers = [{
      lat: @toy.latitude,
      lng: @toy.longitude,
      # Open an info window when I click on the marker
      infoWindow: render_to_string(partial: "info_window", locals: { toy: @toy })
    }]
    @booking = Booking.new
  end

  def new
    @user = current_user
    @toy = Toy.new
    authorize @toy
  end

  def create
    @user = current_user
    @toy = Toy.new(toy_params)
    authorize @toy
    @toy.user = @user
    if @toy.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  def edit
    authorize @toy
  end

  def update
    @toy.update(toy_params)
    authorize @toy
  end

  def destroy
    @toy.destroy
    authorize @toy
    redirect_to dashboard_path
  end

  def set_toy
    @toy = Toy.find(params[:id])
  end

  def toy_params
    params.require(:toy).permit(:name, :description, :address, :daily_price, :min_age, :picture, :theme_id, :user_id)
  end

  def display_markers
    @markers = @toys.map do |toy|
      {
        lat: toy.latitude,
        lng: toy.longitude,
        # Open an info window when I click on the marker
        infoWindow: render_to_string(partial: "info_window", locals: { toy: toy })
      }
    end
  end

end
