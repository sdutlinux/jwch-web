class PagesController < ApplicationController
  caches_page :index
  def index
    render params[:key] 
  end
end
