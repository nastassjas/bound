class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @mission = Mission.find(params[:mission_id])

    if @mission.volunteers_count > @mission.bookings.count
      @booking.mission = @mission
    end

    @booking.user = current_user
    authorize @booking

    if @booking.save!
      #flash[:notice] = 'Bravo...'
      redirect_to project_path(@mission.project)
    else
      redirect_to mission_path(@mission)
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @mission = current_user.missions
  end

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

    def destroy
      @booking = Booking.find(params[:id])
      authorize @booking
      @booking.destroy
    end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :mission_id)
  end
end
