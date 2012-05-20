module Admin::MessagesHelper
  def message_by_type(message_type_id)
    @message = Message.where(:message_type_id => message_type_id)
  end
end
