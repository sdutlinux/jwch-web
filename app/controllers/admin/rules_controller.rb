#coding: utf-8
class Admin::RulesController < Admin::BaseController
  before_filter :find_rule_type

  def index
    @rules = Rule.where(:category_id => @rule_type.id).order("created_at DESC").paginate(:page => params[:page],:per_page => 7)

    respond_to do |format|
      format.html
    end
  end

  def new
    @rule = Rule.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @rule = @rule_type.rules.new(params[:rule])

    respond_to do |format|
      if @rule.save
        format.html { redirect_to admin_category_rules_path(), notice: ' 更新成功' }
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
        format.html { redirect_to admin_category_rule_path, notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @rule = @rule_type.rules.find(params[:id])
    @rule.destroy

    respond_to do |format|
      format.html { redirect_to admin_category_rules_path }
    end
  end

  private
  def find_rule_type
    @rule_type = Category.find(params[:category_id])
  end

  def set_section_key
    @section_key = 'gzzd'
  end
end
