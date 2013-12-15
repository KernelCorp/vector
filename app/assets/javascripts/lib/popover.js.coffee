class PopoverController
  constructor: ->
    $('.bid_button').click @show
    $('#popover_background').click @hide
    $('#new_bid').submit @on_submit
    $('input').on 'input', ->
      if $(this).val() != ''
        $(this).parent().removeClass('input_error')
    return
  show: ->
    $('#popover_container').show()
    $('#popover_background').show()
    return false
  hide: ->
    $('#popover_container').hide()
    $('#popover_background').hide()
    return
  validate: ->
    error_indicator = true
    for input in $('.important_field')
      if $(input).val() == ''
        $(input).parent().addClass 'input_error'
        error_indicator = false
    return error_indicator
  on_submit: =>
    $('.input_error').removeClass('input_error')
    if !@validate()
      return false
    @hide()
    return true


ready = ->
  if $('.bid_button').length > 0
    new PopoverController
  return


$(document).ready ready