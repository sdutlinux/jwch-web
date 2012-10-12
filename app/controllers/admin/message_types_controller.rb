#coding: utf-8
class Admin::MessageTypesController < Admin::BaseController

  def index
    @message_type = MessageType.new
    @message_types = MessageType.where(:message_channel_id => params[:channel_id])

    respond_to do |format|
      format.html
    end
  end

  def create
    @message_type = MessageType.new(params[:message_type])

    respond_to do |format|
      if @message_type.save
        format.html { redirect_to admin_message_types_path(:channel_id => @message_type.message_channel_id ) , notice: '创建成功' }
      else
        format.html { redirect_to admin_message_types_path(:channel_id => @message_type.message_channel_id ), notice: '创建失败' }
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
      format.html {redirect_to admin_message_types_path(:channel_id => @message_type.message_channel_id)}
      format.js
    end
  end
end
