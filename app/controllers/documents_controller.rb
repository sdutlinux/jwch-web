class DocumentsController < ApplicationController

  def index
    @categorys = Category.where(:section_key => 'xzzq')
    @category_id = params[:category_id].to_i
    if params[:category_id]
      @documents = Document.where(:category_id => @category_id).paginate :page => params[:page], :order => 'created_at desc', :per_page => 24
    else
      @documents = Document.paginate :page => params[:page], :order => 'created_at desc', :per_page => 24
    end

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
