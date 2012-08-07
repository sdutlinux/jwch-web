class WorkflowTypesController < ApplicationController
  def index
    @workflow_types = WorkflowType.all

    respond_to do |format|
      format.html
    end
  end
end
