class WelcomeController < ApplicationController
  def index
    @news = News.order('created_at DESC').limit(11)
    @message_channels = MessageChannel.order('created_at DESC').limit(6)

    respond_to do |format|
      format.html
    end
  end
end
