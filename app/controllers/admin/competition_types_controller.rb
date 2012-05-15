#coding=utf-8
class Admin::CompetitionTypesController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @competition_types = CompetitionType.paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def new
    @competition_type = CompetitionType.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @competition_type = CompetitionType.new(params[:competition_type])

    respond_to do |format|
      if @competition_type.save
        format.html { redirect_to admin_competition_types_path, notice: ' 创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @competition_type = CompetitionType.find(params[:id])
  end

  def update
    @competition_type = CompetitionType.find(params[:id])

    respond_to do |format|
      if @competition_type.update_attributes(params[:competition_type])
        format.html { redirect_to admin_competition_types_path, notice: 'CompetitionType was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @competition_type = CompetitionType.find(params[:id])
    @competition_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_competition_types_path }
    end
  end

end
