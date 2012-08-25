#coding=utf-8
class Admin::RuleTypesController < ApplicationController
  layout "admin"
  before_filter :require_logined, :set_section_key

  def index
    @rule_types = RuleType.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @rule_type  = RuleType.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @rule_type  = RuleType.new(params[:rule_type])

    respond_to do |format|
      if @rule_type.save
        format.html { redirect_to admin_rule_types_path, notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @rule_type = RuleType.find(params[:id])
  end

  def update
    @rule_type = RuleType.find(params[:id])

    respond_to do |format|
      if @rule_type.update_attributes(params[:rule_type])
        format.html { redirect_to admin_rule_types_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @rule_type = RuleType.find(params[:id])
    @rule_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_rule_types_path }
    end
  end
  private 
  def set_section_key
    @section_key = 'gzzd'
  end
end
