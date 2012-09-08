class RulesController < ApplicationController

  def index
    @rule_type_name = Category.find( :id => '15').name
    @rules = Rule.where( :category_id => params[:category_id] ).paginate :page => params[:page],
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
