class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :index]
  skip_after_action :verify_authorized, only: [:show, :new, :index]

  def show
    @bookings = current_user.bookings
    @missions = current_user.missions
  end

  def destroy
    @booking = booking.find(params[:id])
    @booking.destroy
  end
end
