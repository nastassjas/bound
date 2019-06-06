class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :index]
  skip_after_action :verify_authorized, only: [:show, :new, :index]

  def show
    @user = current_user
    @bookings = Booking.where(user_id: current_user.id)
  end
end
