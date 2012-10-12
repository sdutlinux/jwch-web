class WelcomeController < ApplicationController
  def index
    @news = News.limit(10)

    respond_to do |format|
      format.html
    end
  end

end
