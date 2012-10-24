class PagesController < ApplicationController
  def index
    if params[:key] == 'about'
      render 'about'
    elsif params[:key] == 'zhengfang'
      render 'zhengfang'
    end
  end
end
