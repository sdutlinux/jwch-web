class NewsController < ApplicationController
  def index
    @news = News.paginate :page => params[:page], :order => 'created_at desc',
      :per_page=>15

    respond_to do |format|
      format.html
    end
  end

  def show
    @new = News.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
