#coding=UTF-8
class Admin::DashboardController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def show
    @title = "后台管理"
  end

end
