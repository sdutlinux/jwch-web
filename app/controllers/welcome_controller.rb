class WelcomeController < ApplicationController
  layout "application"
  def index
    @news = News.limit(10).all
    respond_to do |format|
      format.html
    end
  end

end
