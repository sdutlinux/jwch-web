class RuleTypesController < ApplicationController
  def index
    @rule_types = RuleType.all
    
    respond_to do |format|
      format.html
    end
  end
end
