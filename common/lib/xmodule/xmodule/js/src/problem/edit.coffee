class @MarkdownEditingDescriptor extends XModule.Descriptor
  constructor: (@element) ->
    @xml_editor = CodeMirror.fromTextArea($(".xml-box", @element)[0], {
    mode: "xml"
    lineNumbers: true
    lineWrapping: true
    })

    if $(".markdown-box", @element).length != 0
      @markdown_editor = CodeMirror.fromTextArea($(".markdown-box", @element)[0], {
      lineWrapping: true
      mode: null
      onChange: @onMarkdownEditorUpdate
      })

  onMarkdownEditorUpdate: ->
    console.log('update')

  save: ->
    data: @xml_editor.getValue()
