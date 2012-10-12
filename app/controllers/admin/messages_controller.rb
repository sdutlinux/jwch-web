#coding: utf-8
class Admin::MessagesController < Admin::BaseController

  def index
#    @messages = Message.where(:message_channel_id => params[:channel_id])
    @message_types = MessageType.where(:message_channel_id => params[:channel_id])

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
        format.html { redirect_to admin_messages_path(:channel_id => @message.message_channel_id), notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to admin_messages_path(:channel_id => @message.message_channel_id), notice: '更新成功' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html {redirect_to admin_messages_path(:channel_id => @message.message_channel_id)}
    end
  end

  private
  def set_section_key
    @section_key = 'jxjx'
  end
end
