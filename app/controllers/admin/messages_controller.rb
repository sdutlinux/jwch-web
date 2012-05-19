#coding: utf-8
class Admin::MessagesController < ApplicationController
  layout "admin"
  before_filter :require_logined

  def index
    @messages = Message.where(:message_channel_id => params[:channel_id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.save
        format.html { redirect_to [:admin,@message], notice: '创建成功' }
      els
        format.html { render action: "new" }
      end
    end
  end

  def edit
  end

end
