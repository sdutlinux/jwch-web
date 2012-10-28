#coding: utf-8
class CompetitionsController < ApplicationController
  before_filter :find_competition_type

  def index
    @competitions = @competition_type.competitions.paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def show
    @competition = @competition_type.competitions.find(params[:id])

    respond_to do |format|
      format.html
    end
  end


  private

  def find_competition_type
    @competition_type = Category.find(params[:category_id])
  end

  def set_section_key
    @section_key = 'cxjs'
  end

end
