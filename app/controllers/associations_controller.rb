class AssociationsController < ApplicationController
  def show
    @association = Association.find(params[:id])
  end
end
