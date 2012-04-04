class NewsController < ApplicationController
  def index
    @news = News.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @news = News.find(params[:id])

    respond_to do |format|
      format.html 
    end
  end
end
