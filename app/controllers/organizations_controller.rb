class OrganizationsController < ApplicationController
  layout "application"
  def index 
    @people = Organization.where("category_id=1")
    @organization = Organization.where("category_id=2")

    respond_to do |format|
      format.html
    end
  end

  def show

    @oranization = Organization.find(params[:id])

    respond_to do |format|
      format.html
    end

  end


end
