#coding: utf-8
class Admin::RuleTypesController < Admin::BaseController
  before_filter  :set_section_key, :find_section 

  def index
    @rule_types = Category.where(:section_key => @section_key )

    respond_to do |format|
      format.html
    end
  end

  private 
  def set_section_key
    @section_key = 'gzzd'
  end

  def find_section
    @section = Section.find_by_section_key('gzzd')
  end
end
