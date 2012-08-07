class LawsController < ApplicationController
  def index
    @category_id = params[:category_id] 
    @laws = Law.where( :category_id => @category_id )

    respond_to do |format|
      format.html
    end
  end
  

  def show
    @law = Law.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
