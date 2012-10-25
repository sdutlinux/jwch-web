class PagesController < ApplicationController
  def index
    respond_to do |format|
      format.html { render params[:key] }
    end
  end
end
