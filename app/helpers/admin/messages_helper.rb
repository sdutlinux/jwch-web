module Admin::MessagesHelper

  def mesage_type_name(mesage_type_id)
    MessageType.find(mesage_type_id).name
  end

end
