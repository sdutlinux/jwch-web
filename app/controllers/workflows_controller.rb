class WorkflowsController < ApplicationController
  before_filter :find_workflow_type 

  def index
    @workflows = @workflow_type.workflows.paginate :page => params[:page], :order=> 'created_at desc',
      :per_page => 15

    respond_to do |format|
      format.html
    end
  end
  
  def show
    @workflow= @workflow_type.workflows.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def find_workflow_type
    @workflow_type =  WorkflowType.find(params[:workflow_type_id])
  end
end
