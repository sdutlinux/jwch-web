class WorkflowTypesController < ApplicationController
  layout "application"
  def index
    @workflow_types = WorkflowType.all

    respond_to do |format|
      format.html
    end
  end
end
