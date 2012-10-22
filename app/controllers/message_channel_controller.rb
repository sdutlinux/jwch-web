class MessageChannelController < ApplicationController
  layout 'message_channel'
  def index
    @message_channels = MessageChannel.all.paginate  :page => params[:page],
      :order => 'created_at desc', :perpage => 15

    respond_to do |format|
      format.html
    end
  end

  def show
    @message_channel = MessageChannel.find(params[:id])
    @messages = Message.where( :message_channel_id => @message_channel.id )
    @message_types = MessageType.where( :message_channel_id => @message_channel.id)

    respond_to do |format|
      format.html
    end
  end
end
