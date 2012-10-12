#coding: utf-8
class Admin::DashboardController < Admin::BaseController
  skip_before_filter :set_section_key 
  def show
    @title = "后台管理"
  end
end
