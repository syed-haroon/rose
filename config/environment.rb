# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rose::Application.initialize!

#ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#  if instance.error_message.kind_of?(Array)
#    %(#{html_tag}<span class="validation-error">&nbsp;
#         #{instance.error_message.join(',')}</span>).html_safe
#  else %(#{html_tag}<span class="validation-error">&nbsp;
#       #{instance.error_message}</span>).html_safe
#  end
#end

#ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#  unless html_tag =~ /^<label/
#    %{<div class="field_with_errors">#{html_tag}<label for="#{instance.send(:tag_id)}" class="message">#{instance.error_message.first}</label></div>}.html_safe
#  else
#    %{<div class="field_with_errors">#{html_tag}</div>}.html_safe
#  end
#end

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  unless html_tag =~ /^<label/
    %{<span class="field_with_errors">#{html_tag}<p class="help-inline">#{instance.error_message.first}</p></span>}.html_safe
  else
    %{<span class="field_with_errors">#{html_tag}</span>}.html_safe
  end
end

#date formatted in edit view to remove "00:00:00" from "04-10-2011 00:00:00"
#use age : if params[:action] == "edit" && @user.date_of_birth != "" f.text_field :date_of_birth, :id => "user_date_of_birth", :value => @user.date_of_birth.to_s(:dmy)
#Date::DATE_FORMATS[:dmy] = "%d-%m-%Y"

Date::DATE_FORMATS[:default] = "%d-%m-%Y"





