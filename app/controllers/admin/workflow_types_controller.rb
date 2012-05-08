#coding=utf-8
class Admin::WorkflowTypesController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @categories = Category.where(:channel_name => "workflow")

    respond_to do |format|
      format.html
    end
  end

  def new
    @category  = Category.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @category  = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_workflow_types_path, notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to admin_workflow_types_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @workflow_type = Category.find(params[:id])
    @workflow_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_workflow_types_path }
    end
  end

end
