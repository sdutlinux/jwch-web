class WelcomeController < ApplicationController
  def index
    @news = News.order('created_at DESC').limit(10)
    @message_channels = MessageChannel.order('created_at DESC').limit(5)

    respond_to do |format|
      format.html
    end
  end

end
