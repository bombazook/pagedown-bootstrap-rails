#= require pagedown_bootstrap/localization

$(document).ready ->
  $('textarea.wmd-input').each (i, input) ->
    attr = $(input).attr('id').split('wmd-input')[1]
    converter = new Markdown.Converter()
    Markdown.Extra.init(converter)
    editor = new Markdown.Editor(converter, {strings: window.Markdown.local.rails, helpButton: attr})
    editor.run()