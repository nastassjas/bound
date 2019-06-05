class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(params[:id])
  end
end

