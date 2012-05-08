#coding: utf-8
class Admin::LawsController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @province_laws = Law.where(:category_id => 1)
    @country_laws = Law.where(:category_id => 2)

    respond_to do |format|
      format.html
    end
  end

  def new
    @law = Law.new

    respond_to do |format|
      format.html
    end

  end

  def create
    @law = Law.new(params[:organization])

    respond_to do |format|
      if @law.save
        format.html { redirect_to [:admin,@law], notice: ' 创建成功' }
      else
        format.html { render action: "new" }
      end
    end

  end

  def edit
    @law = Law.find(params[:id])
  end

  def show
    @law = Law.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def update
    @law = Law.find(params[:id])

    respond_to do |format|
      if @law.update_attributes(params[:organization])
        format.html { redirect_to admin_laws_path, notice: ' 链接更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @law = Law.find(params[:id])
    @law.destroy

    respond_to do |format|
      format.html { redirect_to admin_laws_path  }
    end
  end


end
