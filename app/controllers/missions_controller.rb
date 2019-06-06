class MissionsController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :show, :index]
skip_after_action :verify_authorized, only: [:home, :show, :index]

  def home
    @missions = Mission.all
  end

  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
  end

  def show
    @mission = Mission.find(params[:id])
    @booking = Booking.new
  end

  private

  def mission_params
    params.require(:mission).permit(:title, :description, :start_time, :end_time, :volunteers_count, :charity_id, :skill_id, :latitude, :longitude)
  end
end

  # def index
  #   @missions = MissionPolicy::Scope.new(current_user, Mission).index
  # end


  # def all
  #   @missions = policy_scope(Mission).where.not(latitude: nil, longitude: nil)
  #   if !params[:art_type].nil? && !params[:art_type].empty? && params[:art_type] != "All types"
  #     @missions = @missions.where(art_type: params[:art_type])
  #   end

  #   if !params[:category].nil? && !params[:category].nil? && params[:category] != "All Categories"
  #     @missions = @missions.where(category: params[:category])
  #   end

  #   if !params[:size].nil? && !params[:size].nil? && params[:size] != "All sizes"
  #     @missions = @missions.where(size: params[:size])
  #   end

  #   @missions = @missions.near(params[:address], 10) if !params[:address].nil? && !params[:address].empty?

  #   @markers = @missions.map do |mission|
  #     {
  #       lat: mission.latitude,
  #       lng: mission.longitude,
  #       infoWindow: render_to_string(partial: "infowindow", locals: { mission: mission })
  #     }
  #   end
  # end

  # def create
  #   @mission = Mission.new(mission_params)
  #   @mission.user = current_user
  #   if @mission.save!
  #     redirect_to mission_path(@mission)
  #   else
  #     render :new
  #   end
  # end

