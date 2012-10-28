#coding: utf-8
class Admin::LinksController < Admin::BaseController

  def index
    @links = Link.order("sort ASC")

    respond_to do |format|
      format.html
    end
  end

  def show
    @link = Link.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @link = Link.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def create
    @link = Link.new(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to [:admin,@link], notice: ' 链接创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @link = Link.find(params[:id])

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to admin_link_path, notice: ' 链接更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    respond_to do |format|
      format.html { redirect_to admin_links_url }
    end
  end

  private
  def set_section_key
    @section_key = 'xglj'
  end
end
