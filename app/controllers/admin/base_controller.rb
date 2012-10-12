module Admin
  class BaseController < ApplicationController
  	 layout "admin"
     before_filter :require_logined
  end
end
