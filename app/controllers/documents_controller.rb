class DocumentsController < ApplicationController
  layout "application"
  def index
    @documents = Document.where(:category => params[:category]).paginate :page => params[:page],
      :order => 'created_at desc', :per_page => 24

    respond_to do |format|
      format.html
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
end
