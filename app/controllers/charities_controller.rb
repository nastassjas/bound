class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.new(charity_params)
    CheckAsso.call(@charity.registration_nb)
    if @charity.save
      @enrollment = Enrollment.new(
        charity: @charity,
        user: current_user
      )
      @enrollment.save
      redirect_to charities_path
    else
      render :new
    end
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :description, :phone_number, :address, :email, :registration_nb)
  end
end
