class BookingsController < ApplicationController
#   def create
#     @booking = Booking.new(booking_params)
#     @mission = Mission.find(params[:mission_id])
#     @booking.mission = @mission
#     @booking.user = current_user

#     @booking.status = "Pending"

#     if @booking.save!
#       redirect_to user_path(current_user)
#     else
#       redirect_to mission_path(@mission)
#     end
#   end

#   def index
#     @booking_requests = Booking.select { |booking| booking.mission.user == current_user }
#     @bookings = Booking.where(user_id: current_user.id)
#     # @mission = current_user.missions
#   end

#   def edit
#     @booking = Booking.find(params[:id])
#     @mission = Mission.find(params[:mission_id])
#   end

#   def update
#     @booking = Booking.find(params[:id])
#     if @booking.update(booking_params)
#       redirect_to mission_path(@mission)
#     else
#       render mission_path(@mission)
#     end
#   end

#   def destroy
#     @booking = Booking.find(params[:id])
#     @booking.destroy
#     redirect_to bookings_path
#   end

#   def status_change
#   end

#   private

#   def booking_params
#     params.require(:booking).permit(:start_date, :end_date, :user_id, :mission_id)
#   end
end
