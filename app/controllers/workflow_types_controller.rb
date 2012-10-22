class WorkflowTypesController < ApplicationController
  def index
    @section = Section.find_by_section_key('gzlc')
    @workflow_types = @section.categories.all

    respond_to do |format|
      format.html
    end
  end
end
