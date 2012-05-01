class Admin::LinksController < ApplicationController
   layout "admin"
   before_filter :require_logined

  def index
    @links = Link.all

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
        format.html { redirect_to [:admin,@link], notice: 'Link was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @link = Link.find(params[:id])

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to admin_link_path, notice: 'Link was successfully updated.' }
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

end