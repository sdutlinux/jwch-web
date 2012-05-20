# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
JwchWeb::Application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    if instance.error_message.kind_of?(Array)
         %(#{html_tag}<span style="color:red"> #{instance.error_message.join(',')}</span>).html_safe
    else
         %(#{html_tag}<span style="color:red"> #{instance.error_message}</span>)
    end
end
