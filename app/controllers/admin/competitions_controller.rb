class Admin::CompetitionsController < ApplicationController
  layout "admin"
  before_filter :require_logined
  before_filter :find_competition_type

  def index
    @competitions = @competition_type.competitions.all

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

  def new
    @competition = @competition_type.competitions.build

    respond_to do |format|
      format.html
    end
  end

  def edit
    @competition = @competition_type.competitions.find(params[:id])
  end

  def create
    @competition = @competition_type.competitions.new(params[:competition])

    respond_to do |format|
      if @competition.save
        format.html { redirect_to [:admin, @competition_type,@competition], notice: 'Competition was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @competition = @competition_type.competitions.find(params[:id])

    respond_to do |format|
      if @competition.update_attributes(params[:competition])
        format.html { redirect_to admin_competition_type_competition_path, notice: 'Competition was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @competition = @competition_type.competitions.find(params[:id])
    @competition.destroy

    respond_to do |format|
      format.html { redirect_to admin_competition_type_competitions_path }
    end
  end

  private

  def find_competition_type
    @competition_type = CompetitionType.find(params[:competition_type_id])
  end

end
