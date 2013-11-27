class PagedownInput < SimpleForm::Inputs::TextInput
  include ActionView::Helpers::TagHelper
  def input
    out = tag(:div, :id=> "wmd-button-bar-#{attribute_name}")
    out << @builder.text_area(attribute_name, input_html_options.merge(:class => 'wmd-input', :id => "wmd-input-#{attribute_name}"))
    if input_html_options[:preview]
      out << tag(:div, :id=>"wmd-preview-#{attribute_name}", :class=>"wmd-preview")
    end
    out.html_safe
  end
end
