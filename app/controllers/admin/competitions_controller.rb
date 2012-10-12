#coding: utf-8
class Admin::CompetitionsController < Admin::BaseController
  before_filter :set_section_key, :find_competition_type

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
        format.html { redirect_to [:admin, @competition_type,@competition], notice: '创建成功.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @competition = @competition_type.competitions.find(params[:id])

    respond_to do |format|
      if @competition.update_attributes(params[:competition])
        format.html { redirect_to admin_category_competition_path, notice: '更新成功.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @competition = @competition_type.competitions.find(params[:id])
    @competition.destroy

    respond_to do |format|
      format.html { redirect_to admin_category_competitions_path }
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
