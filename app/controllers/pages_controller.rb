class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home

  def home
  end

  def dashboard
    @user = current_user
    @toys = @user.toys
  end

end
