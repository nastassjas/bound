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
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :address, :charity, :category)
  end
end
