#coding: utf-8
class Admin::RuleTypesController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key, :find_section 

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
