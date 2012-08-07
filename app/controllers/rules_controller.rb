class RulesController < ApplicationController
  before_filter :find_rule_type

  def index

    @rules = @rule_type.rules.paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 15

    respond_to do |format|
      format.html
    end
  end


  def show
    @rule =  @rule_type.rules.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  private

  def find_rule_type
    @rule_type = RuleType.find(params[:rule_type_id])
  end

end
