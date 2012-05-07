# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rose::Application.initialize!


ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  %(<div class=""><span class="field_with_errors">#{html_tag}</span></div>).html_safe
end

