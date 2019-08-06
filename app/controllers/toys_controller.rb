class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]

  def index
    @toys = Toy.all
  end

  def show
  end

  def new
    @user = current_user
    @toy = Toy.new
  end

  def create
    @user = current_user
    @toy = Toy.new(toy_params)
    @toy.user = @user
    if @toy.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @toy.update(toy_params)
  end

  def destroy
    @toy.destroy
    redirect
  end

  def set_toy
    @toy = Toy.find(params[:id])
  end

  def toy_params
    params.require(:toy).permit(:name, :description, :address, :daily_price, :min_age, :theme_id, :user_id)
  end

end
