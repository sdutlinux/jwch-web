class Admin::CompetitionsController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @competitions = Competition.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @competition = Competition.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @category = Category.find(params[:id])
    @competition = @category.competitions.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @competition = Competition.find(params[:id])
  end

  def create
    @category = Category.find(params[:id])
    @competition = @category.competitions.new(params[:competition])

    respond_to do |format|
      if @competition.save
        format.html { redirect_to [:admin,@competition], notice: 'Competition was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @competition = Competition.find(params[:id])

    respond_to do |format|
      if @competition.update_attributes(params[:competition])
        format.html { redirect_to admin_competition_path, notice: 'Competition was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @competition = Competition.find(params[:id])
    @competition.destroy

    respond_to do |format|
      format.html { redirect_to admin_competitions_path }
    end
  end

end
