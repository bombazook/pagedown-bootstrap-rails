class PagedownInput < SimpleForm::Inputs::TextInput
  include ActionView::Context
  include ActionView::Helpers::TagHelper
  def input
    content_tag(:div, :id => "wmd-button-bar-#{attribute_name}") do
      html = []
      html << @builder.text_area(attribute_name, input_html_options.merge(:class => 'wmd-input', :id => "wmd-input-#{attribute_name}"))
      if input_html_options[:preview]
        html << content_tag(:div, :class => "form-group"){ content_tag(:div, :id=>"wmd-preview-#{attribute_name}", :class=>"wmd-preview"){""} }
      end
      html.join("\n").html_safe
    end
  end
end
