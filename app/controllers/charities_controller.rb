class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :roulette, :all]
  skip_after_action :verify_authorized, only: [:roulette]

  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def roulette
    @projects = Project.all.map do |project|
      { name: project.name, url: project_url(project) }
    end
  end

  def new
    @charity = Charity.new
      authorize(@charity)
  end

  def create
    @charity = Charity.new(charity_params)
    authorize(@charity)
    if CheckAsso.call(@charity.registration_nb) == true
      @charity.save
      @enrollment = Enrollment.new(
        charity: @charity,
        user: current_user
      )
      @enrollment.save
      flash[:notice] = "Association créée !"
      redirect_to charities_path
    else
      flash[:notice] = "Association inexistante"
      render :new
    end
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :description, :phone_number, :address, :email, :registration_nb)
  end
end
