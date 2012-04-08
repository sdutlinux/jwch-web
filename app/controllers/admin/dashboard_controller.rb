class Admin::DashboardController < ApplicationController
  layout "admin"
  before_filter :require_login 

  def show
  end

end
