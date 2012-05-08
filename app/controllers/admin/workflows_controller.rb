class Admin::WorkflowsController < ApplicationController
  layout "admin"
  before_filter :require_logined
  before_filter :find_workflow_type

  def index
    @workflows = @workflow_type.workflows.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @workflow = @workflow_type.workflows.build

    respond_to do |format|
      format.html
    end
  end

  def create
    @workflow = @workflow_type.workflows.new(params[:workflow])

    respond_to do |format|
      if @workflow.save
        format.html { redirect_to [:admin, @workflow_type,@workflow], notice: ' 更新成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @workflow = @workflow_type.workflows.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @workflow = @workflow_type.workflows.find(params[:id])
  end

  def update
    @workflow = @workflow_type.workflows.find(params[:id])

    respond_to do |format|
      if @workflow.update_attributes(params[:workflow])
        format.html { redirect_to admin_workflow_type_workflow_path, notice: 'Competition was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @workflow = @workflow_type.workflows.find(params[:id])
    @workflow.destroy

    respond_to do |format|
      format.html { redirect_to admin_workflow_type_workflows_path }
    end
  end

  private

  def find_workflow_type
    @workflow_type = Category.find(params[:workflow_type_id])
  end

end
