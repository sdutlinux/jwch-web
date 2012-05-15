#coding=utf-8
class Admin::NewsController < ApplicationController
  layout "admin"
  before_filter :require_logined
  def index
    @news = News.paginate :page=>params[:page], :order => 'created_at desc',
      :per_page => 10

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

  def new
    @news = News.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(params[:news])

    respond_to do |format|
      if @news.save
        format.html { redirect_to [:admin,@news], notice: 'News was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @news = News.find(params[:id])

    respond_to do |format|
      if @news.update_attributes(params[:news])
        format.html { redirect_to admin_news_path, notice: 'News was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy

    respond_to do |format|
      format.html { redirect_to admin_news_index_url }
      format.json { head :no_content }
    end
  end

end
