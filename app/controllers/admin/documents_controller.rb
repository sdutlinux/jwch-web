#coding: utf-8
class Admin::DocumentsController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key

  def index
    @documents = Document.paginate :page=>params[:page], :order => 'created_at desc',:per_page => 10
    respond_to do |format|
      format.html
    end
  end


  def create
    @file = Document.new(params[:document])
    respond_to do |format|
      if @file.save
        flash[:notice] = "上传成功"
        format.html {redirect_to(:action => :index)}
      else
        flash[:notice] = "上传失败"
        format.html {redirect_to(:action => :index)}
      end
    end
  end

  def show
    @file = Document.find(params[:id])
    path = @file.path
    content_type = @file.content_type
    if File.exists?(path)
      send_file path,:type => content_type
    else
      render "public/404.html"
    end
  end


  def destroy
    @document = Document.find(params[:id])
    File.delete(@document.path)
    @document.destroy
    redirect_to :action => :index
  end

  private
  def set_section_key
    @section_key = 'xzzq'
  end
end
