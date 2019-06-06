class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  skip_after_action :verify_authorized, only: [:home, :index, :show]

  def home
    @projects = policy_scope(Project)
  end

  def index
    @projects = policy_scope(Project)
  end

  def new
    @project = Project.new
    authorize(@project)
  end

  def create
    @project = Project.new(project_params)
    authorize(@project)
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
