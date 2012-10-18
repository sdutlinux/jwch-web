#coding: utf-8
class Admin::MessagesController < Admin::BaseController
  before_filter :find_channel

  def index
    @message_type = @message_channel.message_types

    respond_to do |format|
      format.html
    end
  end

  def new
    @message = @message_channel.messages.new
  end

  def create
    @message = @message_channel.messages.build(params[:message])

    respond_to do |format|
      if @message.save
        format.html { redirect_to admin_message_channel_messages_path(@message_channel), notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to admin_message_channel_messages_path(@message_channel), notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html {redirect_to admin_message_channel_messages_path(@message_channel)}
    end
  end

  private
  def set_section_key
    @section_key = 'jxjx'
  end
  def find_channel
    @message_channel = MessageChannel.find(params[:message_channel_id])
  end
end
