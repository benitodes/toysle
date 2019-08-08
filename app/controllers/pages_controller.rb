class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home

  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @toys = current_user.toys
    @review = Review.new
  end

end
