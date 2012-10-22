class WorkflowTypesController < ApplicationController
  def index
    @workflow_types = Category.where( :section_key => 'gzlc')

    respond_to do |format|
      format.html
    end
  end
end
