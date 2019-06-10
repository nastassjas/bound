class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  skip_after_action :verify_authorized, only: [:home, :index, :show]

  def home
    @projects = policy_scope(Project)
  end

  def index
    @projects = policy_scope(Project).where.not(latitude: nil, longitude: nil)

    sql_query = "category ILIKE ?"
    @projects = @projects.where(sql_query, "%#{params[:category]}%") if params[:category].present? && params[:category] != "Toutes les catégories"

    @projects = @projects.near(params[:address], 10) if params[:address].present? && !params[:address].empty?

    if params[:start_time].present? && params[:start_time].first != ""
      @missions = Mission.select do |mission|
        (mission.start_time ... mission.end_time).cover?(Date.parse(params[:start_time]))
      end

      @project_in_time_range = @missions.map { |mission| mission.project }


      @projects = @projects.select do |project|
        @project_in_time_range.include?(project)
      end
    end

    if @projects.present?
      @markers = @projects.map do |project|
        {
          lat: project.latitude,
          lng: project.longitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { project: project })
        }
      end
    end
  end

  def new
    @project = Project.new
    @charity = Charity.find(params[:charity_id])
    @project.charity = @charity
    authorize(@project)
  end

  def create
    @project = Project.new(project_params)
    @charity = Charity.find(params[:charity_id])
    @project.charity = @charity
    authorize(@project)
    if @project.save!
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :address, :charity, :category)
  end
end
