class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  skip_after_action :verify_authorized, only: [:home, :index, :show]

  def home
    @projects = policy_scope(Project)
  end

  def index
    @projects = policy_scope(Project)

    @projects = Project.where.not(latitude: nil, longitude: nil)

    @markers = @projects.map do |project|
      {
        lat: project.latitude,
        lng: project.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { project: project })
      }
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
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
