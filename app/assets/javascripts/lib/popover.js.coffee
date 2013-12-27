class PopoverController
  constructor: ->
    $('#bid_1').click @show
    $('#popover_background').click @hide
    $('#close_button').click @hide
    $('#bid_2').click @hide
    $('#new_bid').submit @on_submit
    $('#bid_date').datepicker({autoSize: true})
    $('input').on 'input', @on_input
    $('#bid_email').on 'input', ->
      if $(this).val() == '' || $(this).val().match /(\S)+[@](\S)+[.](\S)+/
        $(this).parent().removeClass('input_error')
        $('.validation_message_2').hide()
      return
    $('.calendar img').click @focus_to_date_field

  on_input: ->
    if PopoverController::validate()
      $('.submit_button').addClass('valid_submit')
    else
      $('.submit_button').removeClass('valid_submit')
    if $(this).val() != ''
      if !$(this).is('#bid_email')
        $(this).parent().removeClass('input_error')
    else
      $(this).parent().addClass('input_error')
    return


  show: ->
    $('#popover_container').show()
    $('#popover_background').show()
    $('.input-wrap input').val("")
    $('.input-wrap textarea').val("")
    $('.input_error').removeClass('input_error')
    $('.valid_submit').removeClass('valid_submit')
    $('.validation_message').hide()
    $('.validation_message_2').hide()
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
#        $(input).parent().addClass 'input_error'
        #$('.validation_message').show()
        error_indicator = false
    if $('#bid_email').val() != '' && !$('#bid_email').val().match /(\S)+[@](\S)+[.](\S)+/
#      $('#bid_email').parent().addClass 'input_error'
      error_indicator = false
    if !$('#bid_phone').val().match /^[0-9 ]+$/
      error_indicator = false
#      $('.validation_message_2').show()
    return error_indicator

  on_submit: =>
    if !$('.submit_button').hasClass('valid_submit')
      return false
    $('.input_error').removeClass('input_error')
    if !@validate()
      return false
    @hide()
    $('#popover_background').show()
    $('#popover_success').show()
    return true

  focus_to_date_field: ()->
    $('.with-calendar').trigger('focus')
    return

ready = ->
  if $('.bid_button').length > 0
    window.popover_controller = new PopoverController
  return

$(document).ready ready