#coding=utf-8
class Admin::WorkflowTypesController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @workflow_types = WorkflowType.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @workflow_type  = WorkflowType.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @workflow_type  = WorkflowType.new(params[:workflow_type])

    respond_to do |format|
      if @workflow_type.save
        format.html { redirect_to admin_workflow_types_path, notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @workflow_type = WorkflowType.find(params[:id])
  end

  def update
    @workflow_type = WorkflowType.find(params[:id])

    respond_to do |format|
      if @workflow_type.update_attributes(params[:workflow_type])
        format.html { redirect_to admin_workflow_types_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @workflow_type = WorkflowType.find(params[:id])
    @workflow_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_workflow_types_path }
      format.js
    end
  end

end
