ready = ->
  return
$(document).ready ->
  $('a.on-off').click ->
    wrapper = $(this).parent().parent()
    if wrapper.hasClass('light-on')
      wrapper.removeClass('light-on')
      wrapper.addClass('light-off')
    else
      wrapper.removeClass('light-off')
      wrapper.addClass('light-on')
