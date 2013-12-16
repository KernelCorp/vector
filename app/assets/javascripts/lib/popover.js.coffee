class PopoverController
  constructor: ->
    $('#bid_1').click @show
    $('#popover_background').click @hide
    $('#close_button').click @hide
    $('#bid_2').click @hide
    $('#new_bid').submit @on_submit
    $('input').on 'input', ->
      if $(this).val() != ''
        if !$(this).is('#bid_email')
          $(this).parent().removeClass('input_error')
      else
        $(this).parent().addClass('input_error')
      return
    $('#bid_email').on 'input', ->
      if $(this).val().match /(\S)+[@](\S)+[.](\S)+/
        $(this).parent().removeClass('input_error')
        $('.validation_message_2').hide()
      return
  show: ->
    $('#popover_container').show()
    $('#popover_background').show()
    return false
  hide: ->
    $('#popover_container').hide()
    $('#popover_background').hide()
    $('#popover_success').hide()
    return false
  validate: ->
    error_indicator = true
    for input in $('.important_field')
      if $(input).val() == ''
        $(input).parent().addClass 'input_error'
        $('.validation_message').show()
        error_indicator = false
    if !$('#bid_email').val().match /(\S)+[@](\S)+[.](\S)+/
      $('#bid_email').parent().addClass 'input_error'
      error_indicator = false
      $('.validation_message_2').show()
    return error_indicator
  on_submit: =>
    $('.input_error').removeClass('input_error')
    if !@validate()
      return false
    @hide()
    $('#popover_background').show()
    $('#popover_success').show()
    return true

ready = ->
  if $('.bid_button').length > 0
    new PopoverController
  return

$(document).ready ready