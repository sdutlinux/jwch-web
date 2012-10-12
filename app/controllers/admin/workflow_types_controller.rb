#coding: utf-8
class Admin::WorkflowTypesController < Admin::BaseController
  before_filter :find_section

  def index
    @workflow_types = Category.where(:section_key => @section_key).paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 10


    respond_to do |format|
      format.html
    end
  end

  private 
  def set_section_key
    @section_key = 'gzlc'
  end

  def find_section
    @section = Section.find_by_section_key('gzlc')
  end
end
