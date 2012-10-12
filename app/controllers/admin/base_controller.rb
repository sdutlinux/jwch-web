module Admin
  class BaseController < ApplicationController
    layout "admin"
    before_filter :require_logined
    before_filter :set_section_key
  end
end
