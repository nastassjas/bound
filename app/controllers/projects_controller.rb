class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  skip_after_action :verify_authorized, only: [:home, :index, :show]

  def home
    @projects = policy_scope(Project)
  end

  def index
    @projects = policy_scope(Project)

    @projects = Project.where.not(latitude: nil, longitude: nil)
    if params[:category].present?
      if params[:category] == "Toutes les catégories"
        @projects = Project.where.not(latitude: nil, longitude: nil)
      else
        sql_query = "category ILIKE ?"
        @projects = Project.where(sql_query, "%#{params[:category]}%")
      end
    end



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
