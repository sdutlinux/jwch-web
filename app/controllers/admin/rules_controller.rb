#coding: utf-8
class Admin::RulesController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key, :find_rule_type

  def index
    @rules = @rule_type.rules.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @rule = @rule_type.rules.build

    respond_to do |format|
      format.html
    end
  end

  def create
    @rule = @rule_type.rules.new(params[:rule])

    respond_to do |format|
      if @rule.save
        format.html { redirect_to [:admin, @rule_type,@rule], notice: ' 更新成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @rule = @rule_type.rules.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @rule = @rule_type.rules.find(params[:id])
  end

  def update
    @rule = @rule_type.rules.find(params[:id])

    respond_to do |format|
      if @rule.update_attributes(params[:rule])
        format.html { redirect_to admin_rule_type_rule_path, notice: 'Competition was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @rule = @rule_type.rules.find(params[:id])
    @rule.destroy

    respond_to do |format|
      format.html { redirect_to admin_rule_type_rules_path }
    end
  end

  private
  def find_rule_type
    @rule_type = RuleType.find(params[:rule_type_id])
  end

  def set_section_key
    @section_key = 'gzzd'
  end
end
