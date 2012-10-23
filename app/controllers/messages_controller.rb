class MessagesController < ApplicationController
  layout 'message_channel'
  def show
    @message = Message.find( params[:id] )

    respond_to do |format|
      format.html
    end
    
  end
end
