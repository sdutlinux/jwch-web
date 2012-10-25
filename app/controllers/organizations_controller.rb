class OrganizationsController < ApplicationController
  def index 
    @people = Organization.where("category_id=1").order('id desc')
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
