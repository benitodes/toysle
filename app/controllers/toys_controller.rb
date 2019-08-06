class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :index

  def index
    @toys = Toy.all
  end

  def show
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
    redirect
  end

  def set_toy
    @toy = Toy.find(params[:id])
  end

  def toy_params
    params.require(:toy).permit(:name, :description, :address, :daily_price, :min_age, :theme_id, :user_id)
  end

end
