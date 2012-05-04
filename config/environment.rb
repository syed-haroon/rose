# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rose::Application.initialize!


# need to work in bottom section
#ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#  %("<span class="field_with_errors">#{html_tag}</span>")
#end
#
#class Application < Rails::Application
#
#ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#  include ActionView::Helpers::RawOutputHelper
#  raw %(<span class="field_with_errors">#{html_tag}</span>)
#end

