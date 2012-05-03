#coding:utf-8
class Admin::ChannelsController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @channels = Channel.all
  end

  def new
    @channel = Channel.new

    respond_to do |format|
      format.html
    end
  end

  def show
   @channel = Channel.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def create
    @channel = Channel.new(params[:channel])

    respond_to do |format|
      if @channel.save
        format.html {redirect_to admin_channels_path, notice: "栏目创建成功"}
      else
        format.html {render action: "new"}
      end

    end
  end

end
