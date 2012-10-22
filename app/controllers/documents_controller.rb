#coding=utf-8
class DocumentsController < ApplicationController
  def index
    @category_id = params[:category_id] || Category.find_by_name("学业学籍").id
    @category_id = @category_id.to_i
    @documents = Document.where(:category_id => @category_id).paginate :page => params[:page],
      :order => 'created_at desc', :per_page => 24
    @categorys = Category.find( :all,  :conditions => {:section_key => "xzzq"})

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
