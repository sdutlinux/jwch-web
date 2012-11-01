class SpecialtiesController < ApplicationController
  def index
    @specialties = Specialty.paginate :page => params[:page],
      :order => 'created_at desc', :per_page => 15

    respond_to do |format|
      format.html
    end
  end

  def show
    @specialty = Specialty.find( params[:id] )

    respond_to do |format|
      format.html
    end
  end

end
