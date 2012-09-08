class RuleTypesController < ApplicationController
  def index
    @rule_types = Category.where( :section_key =>"gzzd" )
    
    respond_to do |format|
      format.html
    end
  end
end
