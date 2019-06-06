class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  skip_after_action :verify_authorized, only: [:show]

  def show
    @bookings = current_user.bookings
    @missions = current_user.missions
  end

  def destroy
    @booking = booking.find(params[:id])
    @booking.destroy
  end
end
