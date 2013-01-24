#coding: utf-8
class Admin::MessageTypesController < Admin::BaseController
  before_filter :find_message_channel

  def index
    @message_types = MessageType.where(:message_channel_id => params[:channel_id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @message_type = @message_channel.message_types.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @message_type = @message_channel.message_types.build(params[:message_type])

    respond_to do |format|
      if @message_type.save
        format.html { redirect_to admin_message_channel_messages_path(:message_channel_id => @message_type.message_channel_id) , notice: '创建成功' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @message_type = MessageType.find(params[:id])
  end

  def update
    @message_type = MessageType.find(params[:id])

    respond_to do |format|
      if @message_type.update_attributes(params[:message_type])
      format.html { redirect_to admin_message_types_path(:channel_id => @message_type.message_channel_id) }
      else
        format.html {render action: "edit"}
      end

    end
  end

  def destroy
    @message_type = MessageType.find(params[:id])
    @message_type.destroy

    respond_to do |format|
      format.html {redirect_to admin_message_channels_path}
      format.js
    end
  end

  private
  def set_section_key
    @section_key = 'jxjx'
  end

  def find_message_channel
    @message_channel = MessageChannel.find(params[:message_channel_id])
  end
end
