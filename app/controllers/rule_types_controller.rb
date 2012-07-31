class RuleTypesController < ApplicationController
  layout "application"

  def index
    @rule_types = RuleType.all
    
    respond_to do |format|
      format.html
    end
  end
end
