class RulesController < ApplicationController

  def index
    @rule_type = Category.find(params[:category_id])
    @rules = @rule_type.rules.paginate :page => params[:page],
      :order => 'created_at desc',:per_page => 15

    respond_to do |format|
      format.html
    end
  end


  def show
    @rule = Rule.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
