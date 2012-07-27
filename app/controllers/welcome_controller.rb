class WelcomeController < ApplicationController
  layout "welcome"
  def index
  end

  def main
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

  def guizcap
  end

  def zy
  end

  def kctype 
  end

  def gongzcap 
  end

  def caption 
  end

  def mail 
  end

  def down 
  end

  def jiaoxue 
  end

  def chuangxcap
  end

  def space 
  end

  def jx 
  end

  def show

  end
end
