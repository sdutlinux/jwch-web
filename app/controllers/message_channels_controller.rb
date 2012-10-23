class MessageChannelsController < ApplicationController

  def index
     
    @message_channels = MessageChannel.paginate  :page => params[:page],
      :order => 'created_at desc', :per_page => 15
  end

  def show
    @message_channel = MessageChannel.find(params[:id])
    @messages = Message.where( :message_channel_id => @message_channel.id )
    @message_types = MessageType.where( :message_channel_id => @message_channel.id)
    
    
    render :action => 'show', :layout => 'message_channel'
  end
end
