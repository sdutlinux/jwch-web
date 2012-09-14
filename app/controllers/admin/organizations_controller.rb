#coding: utf-8
class Admin::OrganizationsController < ApplicationController
  layout "admin"
  before_filter :require_logined, :find_categories, :set_section_key

  def index
    @organizations = Organization.paginate(:page => params[:page], :per_page => 7)

    respond_to do |format|
      format.html
    end
  end

  def new
    @organization = Organization.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @organization = Organization.new(params[:organization])

    respond_to do |format|
      if @organization.save
        format.html { redirect_to [:admin,@organization], notice: ' 创建成功' }
      else
        format.html { render action: "new" }
      end
    end

  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def show
    @organization = Organization.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def update
    @organization = Organization.find(params[:id])

    respond_to do |format|
      if @organization.update_attributes(params[:organization])
        format.html { redirect_to admin_organizations_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy

    respond_to do |format|
      format.html { redirect_to admin_organizations_path  }
    end
  end

  private 
  def find_categories 
    @categories = Category.where(:section_key => 'jgsz')
  end

  def set_section_key
    @section_key = 'jgsz'
  end
end
