#coding: utf-8
class Admin::DocumentsController < Admin::BaseController
 skip_before_filter :require_logined 

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
    
    if File.exists?(@file.full_path)
      send_file @file.full_path,:type => @file.content_type
    else
      redirect_to admin_documents_path, :notice => '文件未找到'
    end
  end

  def destroy
    @document = Document.find(params[:id])
    respond_to do |format|
      if File.exists?(@document.full_path)
        File.delete(@document.full_path)
        @document.destroy
        format.html { redirect_to admin_documents_path, :notice => '删除成功'}
      else
        format.html { redirect_to admin_documents_path, :notice => '删除失败'}
      end
    end
  end

  def editor_file
    @file_name = params[:file] + '.' + params[:format]
    @full_path = Rails.root.to_s + '/public/upload_old/' + @file_name

    if File.exists?(@full_path)
      send_file @full_path
    else
      render  'public/404.html', :layout => false 
    end
  end

  private
  def set_section_key
    @section_key = 'xzzq'
  end
end
