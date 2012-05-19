#coding: utf-8
class Admin::MessageChannelsController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @message_channel = MessageChannel.new
    @channels = MessageChannel.paginate :page => params[:page], :order => 'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html
    end
  end

  def destroy
    @message_channel = MessageChannel.find(params[:id])
    @message_channel.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @message_channel = MessageChannel.new(params[:message_channel])

    respond_to do |format|
      if @message_channel.save
        format.html { redirect_to admin_message_channels_path , notice: '创建成功' }
        format.js
      else
        format.html { redirect_to admin_message_channels_path , notice: '创建失败' }
        format.js { redirect_to admin_message_channels_path , notice: '创建失败' }
      end
    end
  end

end
