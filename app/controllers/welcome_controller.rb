class WelcomeController < ApplicationController
  def index
    @news = News.all
    respond_to do |format|
      format.html
    end
  end

  def dep
    @people = Organization.where("category_id=1")
    @organization = Organization.where("category_id=2")

    respond_to do |format|
      format.html
    end
  end

end
