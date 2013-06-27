class PagesController < ApplicationController
  def index
    render params[:key] 
  end
end
